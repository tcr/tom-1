from tom1 import *

labels = generate("""

[start]

0xcafe [check_tos] 0x0010 !

0x0010 @ [check_tos2] drop

0 branch0 start

1 branch0 start

""")

debug()
step_until(pc=labels['check_tos']-1)
validate(tos_bus=0xCAFE)
step_until(pc=labels['check_tos'])
validate(tos=0xCAFE)
step_until(pc=labels['check_tos2'])
validate(tos=0xCAFE)
print('success')
