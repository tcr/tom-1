from tom1 import *

labels = generate("""

[start]

0x48 dup !
0x45 dup !
0x4c dup !
0x4c dup !
0x4f dup !
0x21 dup !

0x48 out
0x45 out
0x4c out
0x4c out
0x4f out
0x21 out

[loop]
0 branch0 loop

""")

debug()
step_until(pc=labels['start'])
