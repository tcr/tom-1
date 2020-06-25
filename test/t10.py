from tom1 import *

labels = generate("""

[start]

10 8 6 >r noop r> 4 [before] noop

>r [first] noop
>r [second] noop
>r [third] noop

r> r> r>
drop drop drop drop

0 branch0 start

""".format(TEMP=0x100))

debug()
step_until(pc=labels['before'])
validate(tos=4)
step_until(pc=labels['first'])
validate(tos=6)
step_until(pc=labels['second'])
validate(tos=8)
step_until(pc=labels['third'])
validate(tos=10)
step_until(pc=labels['start'])
print('success')
