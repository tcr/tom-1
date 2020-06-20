from tools import *

start()
push_literal(0x2244)
push_literal(0x4422)
nand()
push_literal(0x1111)
nand()
push_literal(0x0000)
jump_if_0(0x0000)

debug()
step_until(PC=0x8)
validate(TOS=0xffff)
step_until(PC=0xc)
validate(TOS=0xeeee)
print('success')
