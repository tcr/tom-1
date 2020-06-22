from tools import *

start()

target_start = loc()

push_literal(1)

target_0 = loc()

push_literal(1)

add()

push_literal(65535)

return_push()

target_1 = loc()

push_literal(0x100)
store()

push_literal(0x100)
load()

push_literal(0x100)
load()

return_pop()

drop()

push_literal(10)

push_literal(65535)

return_push()

target_2 = loc()

push_literal(65535)

return_push()

target_3 = loc()

push_literal(65535)

return_push()

target_4 = loc()

push_literal(65535)

return_push()

target_5 = loc()

push_literal(-1)

nand()

return_pop()

drop()

push_literal(1)

add()

return_pop()

drop()

add()

return_pop()

drop()

push_literal(65535)

return_push()

target_6 = loc()
jump_if_0(target_6 + 8)

push_literal(0)

push_literal(0x0)

target_9 = loc()
jump_if_0(target_9 + 4)


push_literal(-1)

target_10 = loc()

return_pop()

drop()

return_pop()

drop()

jump_if_0(target_0)






target_result = loc()

push_literal(0)
jump_if_0(target_start)

print(loc())




debug()
# step_until(PC=0xB)
# validate(dr=1)
# step_until(PC=0x18)
# validate(TOS=2)
# step_until(PC=0x1A)
# validate(TOS=0xFFFF)
#step_until(PC=target_6)
step_until(PC=target_result)
