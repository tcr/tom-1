# http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8127-AVR-8-bit-Microcontroller-ATtiny4-ATtiny5-ATtiny9-ATtiny10_Datasheet.pdf#page=195&zoom=auto,-133,718
# https://github.com/gcc-mirror/gcc/blob/41d6b10e96a1de98e90a7c0378437c3255814b16/libgcc/config/avr/lib1funcs.S#L223

import re

RE_LABEL = r"^\.?(\w+):\s*$"
RE_Z_REG = r"^\s*(st)\s+([XYZ])(\+?),\s*r(\d+)\s*$"
RE_REG_REG = r"^\s*(mov|ad[dc]|cpc?|sub|sbc|cpse)\s+r(\d+),\s*r(\d+)\s*$"
RE_REG = r"^\s*(tst|clr|dec|com|inc|push|ls[lr])\s+r(\d+)\s*$"
RE_REG_IMM = r"^\s*(subi|sbci|ldi|cpi|sbrc)\s+r(\d+),\s*(\-?\d+|0x[a-f0-9]+)\s*$"
RE_BRANCH = r"^\s*(breq|brlo|brne|brcs|rjmp)\s+\.?(\w+)\s*$"
RE_OUT = r"^\s*(out)\s+(\-?\d+|0x[a-f0-9]+),\s*r(\d+)$"

status = "0x8"
and_op = "nand -1 nand"
eightbit = "0xff nand -1 nand" # TODO this might not be for the 8-bit truncate? or maybe it is
add = "add"
sub = "-1 nand 1 add add"
carry_raw = "{} load 256 nand -1 nand".format(status)
carry = "{} load".format(carry_raw)
lshift8 = "dup add dup add dup add dup add dup add dup add dup add dup add"

# Memory map:
#  0x0 => 0x0
#  0x80 => 0x1
#  0x10-0x20 => registers
#  0x100-0x1FF => LSR1
#  0x200-0x2FF => LSL1
print(
    """
    0 0 store
    1 256 store
"""
)

lindex = 0
sbrc_count = 0

inputfile = open("dis.txt").read()
following_label = None
for line in inputfile.strip().split("\n"):
    if following_label != None:
        next_label = following_label
    else:
        next_label = None
    following_label = None

    # Attempt to pre-process the strange lo8, hi8 notation.
    line = re.sub(r'lo8\(-\((.*)\)\)', lambda x: str(-int(x.group(1)) & 0xFF), line)
    line = re.sub(r'lo8\(-(.*)\)', lambda x: str(-int(x.group(1)) & 0xFF), line)
    line = re.sub(r'lo8\((.*)\)', lambda x: str(int(x.group(1)) & 0xFF), line)
    line = re.sub(r'hi8\(-\((.*)\)\)', lambda x: str(-int(x.group(1)) & 0xFF00 >> 8), line)
    line = re.sub(r'hi8\(-(.*)\)', lambda x: str(-int(x.group(1)) & 0xFF00 >> 8), line)
    line = re.sub(r'hi8\((.*)\)', lambda x: str(int(x.group(1)) & 0xFF00 >> 8), line)

    if re.match(RE_LABEL, line):
        label = re.match(RE_LABEL, line)[1]
        print("[{}]".format(label))
        print()
        continue

    print("    # {}".format(line.strip()))
    line = line.strip()

    if line == '':
        continue
    elif line.strip() == "ret":
        continue

    elif re.match(RE_BRANCH, line):
        op = re.match(RE_BRANCH, line)[1]
        target = re.match(RE_BRANCH, line)[2]
        if op == "breq":
            print(
                "    {status} load {eightbit} branch0 {target}".format(
                    status=status, eightbit=eightbit, target=target
                )
            )
        elif op == "brne":
            print(
                "    {status} load {eightbit} branch0 brne_next{lindex} 0 branch0 {target} [brne_next{lindex}]".format(
                    status=status, eightbit=eightbit, target=target, lindex=lindex
                )
            )
            lindex += 1
        elif op == "brcs" or op == "brlo":
            print("    {carry} branch0 {target}".format(carry=carry, target=target))
        elif op == "rjmp":
            print("    0 branch0 {}".format(target))
        else:
            raise Exception("no match")

    elif re.match(RE_Z_REG, line):
        op = re.match(RE_Z_REG, line)[1]
        reg = re.match(RE_Z_REG, line)[2]
        plus = re.match(RE_Z_REG, line)[3]
        r_d = re.match(RE_Z_REG, line)[4]

        if reg == 'Z':
            r_hi = 31
            r_lo = 30
        elif reg == 'Y':
            r_hi = 29
            r_lo = 28
        else: # == 'X':
            r_hi = 27
            r_lo = 26

        if op == "st":
            print(
                "    {r_d} load {r_hi} load {lshift8} {r_lo} load add {plus_str} store".format(
                    r_d=r_d, lshift8=lshift8, r_hi=r_hi, r_lo=r_lo,

                    # ERROR: missing increment of high byte !
                    plus_str="dup 1 add {eightbit} {r_lo} store".format(eightbit=eightbit, r_lo=r_lo) if plus else ""
                )
            )
        else:
            raise Exception("no match")

    elif re.match(RE_REG_REG, line):
        op = re.match(RE_REG_REG, line)[1]
        r_d = re.match(RE_REG_REG, line)[2]
        r_r = re.match(RE_REG_REG, line)[3]
        if op == "mov":
            print("    {r_r} load {r_d} store".format(r_d=r_d, r_r=r_r))
        elif op == "add":
            print(
                "    {r_d} load {r_r} load {add} dup {status} store {eightbit} {r_d} store".format(
                    r_d=r_d, r_r=r_r, eightbit=eightbit, add=add, status=status
                )
            )
        elif op == "sub":
            print(
                "    {r_d} load {r_r} load {sub} dup {status} store {eightbit} {r_d} store".format(
                    r_d=r_d, r_r=r_r, eightbit=eightbit, sub=sub, status=status
                )
            )
        elif op == "cp":
            print(
                "    {r_d} load {r_r} load {sub} {status} store".format(
                    r_d=r_d, r_r=r_r, sub=sub, status=status
                )
            )
        elif op == "adc":
            print(
                "    {r_d} load {r_r} load {carry} {add} dup {status} store {eightbit} {r_d} store".format(
                    r_d=r_d, r_r=r_r, carry=carry, eightbit=eightbit, add=add, status=status
                )
            )
        elif op == "sbc":
            print(
                "    {r_d} load {r_r} load {carry} {add} {sub} dup {status} store {eightbit} {r_d} store".format(
                    r_d=r_d, carry=carry, add=add, r_r=r_r, eightbit=eightbit, sub=sub, status=status
                )
            )
        elif op == "cpc":
            print(
                "    {r_d} load {r_r} load {carry} {add} {sub} dup branch0 cpc_next{lindex} 0 branch0 cpc_next{lindex2} [cpc_next{lindex}] {status} load {eightbit} add [cpc_next{lindex2}] {status} store".format(
                    r_d=r_d, r_r=r_r, carry=carry, add=add, sub=sub, eightbit=eightbit, status=status, lindex=lindex, lindex2=lindex + 1,
                )
            )
            lindex += 2
        elif op == "cpse":
            print(
                "    {status} load {eightbit} branch0 {target}".format(
                    eightbit=eightbit, target="L2", status=status
                )
            )  # HACK
        else:
            raise Exception("no match")

    elif re.match(RE_REG, line):
        op = re.match(RE_REG, line)[1]
        r_a = re.match(RE_REG, line)[2]
        if op == "tst":
            print("    {} load dup nand -1 nand {status} store".format(r_a))
        elif op == "clr":
            print("    0 {} store".format(r_a))
        elif op == "inc":
            print(
                "    {r_a} load 1 {add} dup {status} store {eightbit} {r_a} store".format(
                    r_a=r_a, add=add, eightbit=eightbit, status=status
                )
            )
        elif op == "dec":
            print(
                "    {r_a} load 1 {sub} dup {status} store {eightbit} {r_a} store".format(
                    r_a=r_a, sub=sub, eightbit=eightbit, status=status
                )
            )
        elif op == "com":
            print(
                "    {r_a} load -1 nand dup {status} store {eightbit} {r_a} store".format(
                    r_a=r_a, sub=sub, eightbit=eightbit, status=status
                )
            )
        elif op == "push":
            print(
                "    {r_a} load return_push".format(
                    r_a=r_a,
                )
            )
        elif op == "lsl":
            print(
                "    {r_a} load 0x200 add load {r_a} store".format(
                    r_a=r_a, eightbit=eightbit
                )
            )
        elif op == "lsr":
            print(
                "    {r_a} load 0x300 add load {r_a} store".format(
                    r_a=r_a, eightbit=eightbit
                )
            )
        else:
            raise Exception("no match")

    elif re.match(RE_REG_IMM, line):
        op = re.match(RE_REG_IMM, line)[1]
        r_d = re.match(RE_REG_IMM, line)[2]
        imm = re.match(RE_REG_IMM, line)[3]

        if int(imm) < 0:
            imm = 0x100 + int(imm)

        if op == "subi":
            print(
                "    {r_d} load {imm} {sub} dup {status} store {eightbit} {r_d} store".format(
                    r_d=r_d, imm=imm, eightbit=eightbit, sub=sub, status=status
                )
            )
        elif op == "sbci":
            print(
                "    {r_d} load {carry} {add} {imm} {sub} dup {status} store {eightbit} {r_d} store".format(
                    r_d=r_d, carry=carry, add=add, imm=imm, eightbit=eightbit, sub=sub, status=status
                )
            )
        elif op == "ldi":
            print("    {imm} {r_d} store".format(r_d=r_d, imm=imm))
        elif op == "cpi":
            print(
                "    {r_d} load {imm} {sub} {status} store".format(
                    r_d=r_d, imm=imm, sub=sub, status=status
                )
            )
        elif op == "sbrc":
            target = '__sbrc_{}'.format(sbrc_count)
            print(
                "    {r_d} load {imm} {and_op} branch0 {target}".format(
                    r_d=r_d, imm=1 << int(imm), and_op=and_op, target=target
                )
            )
            sbrc_count += 1
            following_label = target
        else:
            raise Exception("no match")

    elif re.match(RE_OUT, line):
        op = re.match(RE_OUT, line)[1]
        r_d = re.match(RE_OUT, line)[3]
        if op == "out":
            print("    {r_d} out".format(r_d=r_d))
        else:
            raise Exception("no match")

    else:
        raise Exception("no match anywhere")

    if next_label != None:
        print('[{}]'.format(next_label))
    print()
