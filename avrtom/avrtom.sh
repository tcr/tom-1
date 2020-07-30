#!/bin/bash

docker run --rm --user "$(id -u)":"$(id -g)" -v "$PWD":/usr/src/myapp -w /usr/src/myapp \
    dea82/avr-gcc-docker \
    avr-gcc main.c -O2 \
    -finline-small-functions \
    -mmcu=attiny4 -Wa,-adln -g -o main.elf > dis.txt
    # -fno-tree-loop-optimize

docker run --rm --user "$(id -u)":"$(id -g)" -v "$PWD":/usr/src/myapp -w /usr/src/myapp \
    dea82/avr-gcc-docker \
    avr-objcopy -j .text -j .data -O ihex main.elf main.hex

python cleandis.py

# cat dis.txt
## or
python compile.py | tee main.tom
