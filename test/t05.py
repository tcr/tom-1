from tools import *

start()
push_literal(0x5566)
push_literal(0x1122)
push_literal(0xffff)
nand()
push_literal(0x1)
add()
add()
drop()
push_literal(0)
jump_if_0(0)


debug()
step_until(PC=0x8)
validate(dr=0x3)
step_until(PC=0x12)
validate(dr=0x0)
print('success')
