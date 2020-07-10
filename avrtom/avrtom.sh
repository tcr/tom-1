#!/bin/bash

docker run --rm --user "$(id -u)":"$(id -g)" -v "$PWD":/usr/src/myapp -w /usr/src/myapp \
    dea82/avr-gcc-docker \
    avr-gcc main.c -O2 \
    -finline-small-functions -fno-tree-loop-optimize -s \
    -mmcu=attiny4 -Wa,-adln -g -o main.o > dis.txt

python cleandis.py

# cat dis.txt
## or
python compile.py | tee main.tom
