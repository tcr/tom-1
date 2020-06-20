from tools import *

start()
push_literal(0xffff)
push_literal(0x1)
add()
jump_if_0(0x0)

debug()
step_until(PC=0x8)
validate(TOS=0x0)
step_until(PC=0x0)
print('success')
