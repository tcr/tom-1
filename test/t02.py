from tom1 import *

generate("""

[start]

0x2244 0x4422 ~&

0x1111 ~&

0 branch0 start

""")

debug()
step_until(pc=0x8)
validate(tos=0xffff)
step_until(pc=0xc)
validate(tos=0xeeee)
print('success')
