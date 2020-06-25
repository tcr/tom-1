from tom1 import *

labels = generate("""

[start]

0x48 dup !
0x45 dup !
0x4c dup !
0x4c dup !
0x4f dup !
0x21 dup !

0x8048 @
0x8045 @
0x804c @
0x804c @
0x804f @
0x8021 @

[loop]
0 branch0 loop

""")

debug()
step_until(pc=labels['start'])
