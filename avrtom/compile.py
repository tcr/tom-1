# http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8127-AVR-8-bit-Microcontroller-ATtiny4-ATtiny5-ATtiny9-ATtiny10_Datasheet.pdf#page=195&zoom=auto,-133,718
# https://github.com/gcc-mirror/gcc/blob/41d6b10e96a1de98e90a7c0378437c3255814b16/libgcc/config/avr/lib1funcs.S#L223

import re

RE_LABEL = r"^\.?(\w+):\s*$"
RE_REG_REG = r"^\s*(mov|ad[dc]|cpc?|sub|cpse)\s+r(\d+),\s*r(\d+)\s*$"
RE_REG = r"^\s*(tst|clr|dec|com)\s+r(\d+)\s*$"
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
print("""
    1 0 store
    0 256 store
""")

lindex = 0

inputfile = open("dis.txt").read()
for line in inputfile.strip().split("\n"):

    if re.match(RE_LABEL, line):
      label = re.match(RE_LABEL, line)[1]
      print('[{}]'.format(label))
      print()
      continue

    print('    # {}'.format(line.strip()))
    line = line.strip()

    if re.match(RE_BRANCH, line):
      op = re.match(RE_BRANCH, line)[1]
      target = re.match(RE_BRANCH, line)[2]
      if op == 'breq':
        print('    {{status}} load {eightbit} branch0 {target}'.format(eightbit=eightbit, target=target))
      if op == 'brne':
        print('    {{status}} load {eightbit} branch0 brne_next{lindex} 0 branch0 {target} [brne_next{lindex}]'.format(eightbit=eightbit, target=target, lindex=lindex))
        lindex += 1
      if op == 'brcs' or op == 'brlo':
        print('    {carry} branch0 {target}'.format(carry=carry, target=target))
      if op == 'rjmp':
        print('    0 branch0 {}'.format(target))

    if re.match(RE_REG_REG, line):
      op = re.match(RE_REG_REG, line)[1]
      r_d = re.match(RE_REG_REG, line)[2]
      r_r = re.match(RE_REG_REG, line)[3]
      if op == 'mov':
          print('    {r_r} load {r_d} store'.format(r_d=r_d, r_r=r_r))
      if op == 'add':
          print('    {r_d} load {r_r} load {add} dup {{status}} store {eightbit} {r_d} store'.format(r_d=r_d, r_r=r_r, eightbit=eightbit, add=add))
      if op == 'adc':
          print('    {r_d} load {r_r} load {carry} {add} dup {{status}} store {eightbit} {r_d} store'.format(r_d=r_d, r_r=r_r, carry=carry, eightbit=eightbit, add=add))
      if op == 'sub':
          print('    {r_d} load {r_r} load {sub} dup {{status}} store {eightbit} {r_d} store'.format(r_d=r_d, r_r=r_r, eightbit=eightbit, sub=sub))
      if op == 'cp':
          print('    {r_d} load {r_r} load {sub} {{status}} store'.format(r_d=r_d, r_r=r_r, sub=sub))
      if op == 'cpc':
          print('    {r_d} load {r_r} load {carry} {sub} {{status}} store'.format(r_d=r_d, r_r=r_r, carry=carry, sub=sub))
      if op == 'cpse':
          print('    {{status}} load {eightbit} branch0 {target}'.format(eightbit=eightbit, target='L2')) # HACK

    if re.match(RE_REG, line):
      op = re.match(RE_REG, line)[1]
      r_a = re.match(RE_REG, line)[2]
      if op == 'tst':
          print('    {} load dup nand -1 nand {{status}} store'.format(r_a))
      if op == 'clr':
          print('    0 {} store'.format(r_a))
      if op == 'dec':
          print('    {r_a} load 1 {sub} dup {{status}} store {eightbit} {r_a} store'.format(r_a=r_a, sub=sub, eightbit=eightbit))
      if op == 'com':
        print('    {r_a} load -1 nand dup {{status}} store {eightbit} {r_a} store'.format(r_a=r_a, sub=sub, eightbit=eightbit))

    if re.match(RE_REG_IMM, line):
      op = re.match(RE_REG_IMM, line)[1]
      r_d = re.match(RE_REG_IMM, line)[2]
      imm = re.match(RE_REG_IMM, line)[3]
      if imm.startswith('lo8'):
        imm = imm[4:-1]

      if op == 'subi':
          print('    {r_d} load {imm} {sub} dup {{status}} store {eightbit} {r_d} store'.format(r_d=r_d, imm=imm, eightbit=eightbit, sub=sub))
      if op == 'ldi':
          print('    {imm} {r_d} store'.format(r_d=r_d, imm=imm))
      if op == 'cpi':
          print('    {r_d} load {imm} {sub} {{status}} store'.format(r_d=r_d, imm=imm, sub=sub))

    if re.match(RE_REG_LO8_IMM, line):
      op = re.match(RE_REG_LO8_IMM, line)[1]
      r_d = re.match(RE_REG_LO8_IMM, line)[2]
      imm = re.match(RE_REG_LO8_IMM, line)[3]
      if op == 'subi':
          imm = (-int(imm) & 0xFF)
          print('    {r_d} load {imm} {sub} dup {{status}} store {eightbit} {r_d} store'.format(r_d=r_d, imm=imm, eightbit=eightbit, sub=sub))

    if re.match(RE_OUT, line):
      op = re.match(RE_OUT, line)[1]
      r_d = re.match(RE_OUT, line)[3]
      if op == 'out':
        print('    {r_d} out'.format(r_d=r_d))

    print()
