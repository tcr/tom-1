from tom1 import *

labels = generate("""

[start]

4 6 [step1] noop

>r {TEMP} ! {TEMP} @ r> {TEMP} @ [over1] noop

drop [drop1]
drop [drop2]
drop [drop3]
noop

0 branch0 start

""".format(TEMP=0x100))

debug()
step_until(pc=labels['step1'])
validate(dr=2)
step_until(pc=labels['over1'])
validate(tos=4, dr=3)
step_until(pc=labels['drop1'])
validate(tos=6)
step_until(pc=labels['drop2'])
validate(tos=4)
step_until(pc=labels['drop3'])
validate(dr=0)
step_until(pc=labels['start'])
print('success')
