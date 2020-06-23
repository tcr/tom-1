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
step_until(pc=0x8)
validate(tos=0xffff)
step_until(pc=0xc)
validate(tos=0xeeee)
print('success')
