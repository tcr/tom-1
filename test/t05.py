from tom1 import *

labels = generate("""

[start]

0x5566 0x1122 0xffff [check_dr] ~& 1 + + drop [check_dr2]

0 branch0 start

""")

debug()
step_until(pc=labels['check_dr'])
validate(dr=0x3)
step_until(pc=labels['check_dr2'])
validate(dr=0x0)
print('success')
