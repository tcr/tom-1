# http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8127-AVR-8-bit-Microcontroller-ATtiny4-ATtiny5-ATtiny9-ATtiny10_Datasheet.pdf#page=195&zoom=auto,-133,718
# https://github.com/gcc-mirror/gcc/blob/41d6b10e96a1de98e90a7c0378437c3255814b16/libgcc/config/avr/lib1funcs.S#L223

import re

RE_LABEL = r"^\.?(\w+):\s*$"
RE_Z_REG = r"^\s*(st)\s+Z,\s*r(\d+)\s*$"
RE_REG_REG = r"^\s*(mov|ad[dc]|cpc?|sub|cpse)\s+r(\d+),\s*r(\d+)\s*$"
RE_REG = r"^\s*(tst|clr|dec|com|inc)\s+r(\d+)\s*$"
RE_REG_IMM = r"^\s*(subi|ldi|cpi)\s+r(\d+),\s*(\-?\d+|0x[a-f0-9]+|lo8\(\d+\))\s*$"
RE_REG_LO8_IMM = r"^\s*(subi)\s+r(\d+),\s*lo8\(-\((\-?\d+)\)\)\s*$"
RE_BRANCH = r"^\s*(breq|brlo|brne|brcs|rjmp)\s+\.?(\w+)\s*$"
RE_OUT = r"^\s*(out)\s+(\-?\d+|0x[a-f0-9]+|lo8\(\d+\)),\s*r(\d+)$"

eightbit = "0xff nand -1 nand"
add = "add"
sub = "-1 nand 1 add add".format(eightbit)
carry_raw = "{status} load 256 nand -1 nand"
carry = "{} load".format(carry_raw)

# Memory map:
#  0x0 => 0x0
#  0x80 => 0x1
#  0x10-0x20 => registers
#  0x100-0x1FF => LSR1
#  0x200-0x2FF => LSL1
print(
    """
    1 0 store
    0 256 store
"""
)

lindex = 0

inputfile = open("dis.txt").read()
for line in inputfile.strip().split("\n"):
    if re.match(RE_LABEL, line):
        label = re.match(RE_LABEL, line)[1]
        print("[{}]".format(label))
        print()
        continue

    print("    # {}".format(line.strip()))
    line = line.strip()

    if line.strip() == "ret":
        continue

    elif re.match(RE_BRANCH, line):
        op = re.match(RE_BRANCH, line)[1]
        target = re.match(RE_BRANCH, line)[2]
        if op == "breq":
            print(
                "    {{status}} load {eightbit} branch0 {target}".format(
                    eightbit=eightbit, target=target
                )
            )
        elif op == "brne":
            print(
                "    {{status}} load {eightbit} branch0 brne_next{lindex} 0 branch0 {target} [brne_next{lindex}]".format(
                    eightbit=eightbit, target=target, lindex=lindex
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
        r_d = re.match(RE_Z_REG, line)[2]
        if op == "st":
            print(
                "    {r_d} load 31 load dup add dup add dup add 30 load add store".format(
                    r_d=r_d
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
                "    {r_d} load {r_r} load {add} dup {{status}} store {eightbit} {r_d} store".format(
                    r_d=r_d, r_r=r_r, eightbit=eightbit, add=add
                )
            )
        elif op == "adc":
            print(
                "    {r_d} load {r_r} load {carry} {add} dup {{status}} store {eightbit} {r_d} store".format(
                    r_d=r_d, r_r=r_r, carry=carry, eightbit=eightbit, add=add
                )
            )
        elif op == "sub":
            print(
                "    {r_d} load {r_r} load {sub} dup {{status}} store {eightbit} {r_d} store".format(
                    r_d=r_d, r_r=r_r, eightbit=eightbit, sub=sub
                )
            )
        elif op == "cp":
            print(
                "    {r_d} load {r_r} load {sub} {{status}} store".format(
                    r_d=r_d, r_r=r_r, sub=sub
                )
            )
        elif op == "cpc":
            print(
                "    {r_d} load {r_r} load {carry} {sub} {{status}} store".format(
                    r_d=r_d, r_r=r_r, carry=carry, sub=sub
                )
            )
        elif op == "cpse":
            print(
                "    {{status}} load {eightbit} branch0 {target}".format(
                    eightbit=eightbit, target="L2"
                )
            )  # HACK
        else:
            raise Exception("no match")

    elif re.match(RE_REG, line):
        op = re.match(RE_REG, line)[1]
        r_a = re.match(RE_REG, line)[2]
        if op == "tst":
            print("    {} load dup nand -1 nand {{status}} store".format(r_a))
        elif op == "clr":
            print("    0 {} store".format(r_a))
        elif op == "inc":
            print(
                "    {r_a} load 1 {add} dup {{status}} store {eightbit} {r_a} store".format(
                    r_a=r_a, add=add, eightbit=eightbit
                )
            )
        elif op == "dec":
            print(
                "    {r_a} load 1 {sub} dup {{status}} store {eightbit} {r_a} store".format(
                    r_a=r_a, sub=sub, eightbit=eightbit
                )
            )
        elif op == "com":
            print(
                "    {r_a} load -1 nand dup {{status}} store {eightbit} {r_a} store".format(
                    r_a=r_a, sub=sub, eightbit=eightbit
                )
            )
        else:
            raise Exception("no match")

    elif re.match(RE_REG_IMM, line):
        op = re.match(RE_REG_IMM, line)[1]
        r_d = re.match(RE_REG_IMM, line)[2]
        imm = re.match(RE_REG_IMM, line)[3]
        if imm.startswith("lo8"):
            imm = imm[4:-1]

        if op == "subi":
            print(
                "    {r_d} load {imm} {sub} dup {{status}} store {eightbit} {r_d} store".format(
                    r_d=r_d, imm=imm, eightbit=eightbit, sub=sub
                )
            )
        elif op == "ldi":
            print("    {imm} {r_d} store".format(r_d=r_d, imm=imm))
        elif op == "cpi":
            print(
                "    {r_d} load {imm} {sub} {{status}} store".format(
                    r_d=r_d, imm=imm, sub=sub
                )
            )
        else:
            raise Exception("no match")

    elif re.match(RE_REG_LO8_IMM, line):
        op = re.match(RE_REG_LO8_IMM, line)[1]
        r_d = re.match(RE_REG_LO8_IMM, line)[2]
        imm = re.match(RE_REG_LO8_IMM, line)[3]
        if op == "subi":
            imm = -int(imm) & 0xFF
            print(
                "    {r_d} load {imm} {sub} dup {{status}} store {eightbit} {r_d} store".format(
                    r_d=r_d, imm=imm, eightbit=eightbit, sub=sub
                )
            )
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

    print()
