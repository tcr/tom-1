from tom1 import *

labels = generate("""

[start]

0xffff 1 + [check_tos]

branch0 start

""")

debug()
step_until(pc=labels['check_tos'])
validate(tos=0)
step_until(pc=labels['start'])
print('success')
