#cc65 --standard c99 main.c -Oi --codesize 1000 --inline-stdfuncs -Cl
sdcc -mpdk13  main.c --opt-code-speed
