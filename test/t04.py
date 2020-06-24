from tom1 import *

labels = generate("""

[start]

0x4242 >r 0x0000 0x4444 r>

[check_drop] drop

drop drop

0 branch0 start

""")

debug()
step_until(pc=labels['check_drop'] - 1)
validate(dr=0x01)
step_until(pc=labels['check_drop'])
validate(tos=0x4242)
print('success')
