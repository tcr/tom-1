from tools import *


TEMP = 0x0100

start()
push_literal(20)
push_literal(0)
return_push()
push_literal(TEMP)
store()
return_pop()
push_literal(TEMP)
load()
jump_if_0(0)
jump_if_0(0)

debug()
step_until(pc=18)
validate(tos=20)
step_until(pc=20)
print("success")
