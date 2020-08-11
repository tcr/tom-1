typedef unsigned char uint8_t;
typedef unsigned short uint16_t;

#define _MMIO_BYTE(mem_addr) (*(volatile uint8_t *)(mem_addr))
#define _SFR_IO8(io_addr) _MMIO_BYTE(io_addr)

#define IO_IN  _SFR_IO8(0x10)
#define IO_OUT _SFR_IO8(0x20)

/*

// Outputs all values between A and Z to the IO port.

uint8_t main(uint8_t a, uint8_t b) {
    for (uint8_t i = 65; i < 91; i++) {
        IO_OUT = i;
    }
  return 0;
}
*/

/*

// Script for drawing a colorful VGA map.

#define WIDTH 8
#define HEIGHT 8

uint8_t main(uint8_t a, uint8_t b) {
    // Setup shift tables.
    for (uint8_t x = 0; x < 0x80; x++) {
        uint8_t y = x;
        asm("add %0, %0\n\t" : "=r" (y));
        *((uint8_t*)(x + 0x100)) = y;
    }
    for (uint8_t x = 0; x < 0x80; x++) {
        uint8_t y = x;
        asm("add %0, %0\n\t" : "=r" (y));
        *((uint8_t*)(x + 0x180)) = y + 0x1;
    }

    uint8_t j_o = 0;
    for (uint8_t j = 0; j < HEIGHT; j++) {
        for (uint8_t i = 0; i < WIDTH; i++) {
            IO_OUT = j_o + i;
            IO_OUT = 4;
        }
        j_o += 8;
    }

    for (uint8_t i = 0; i < WIDTH; i++) {
        IO_OUT = i;
        IO_OUT = 6;
        IO_OUT = i + (WIDTH * (HEIGHT - 1));
        IO_OUT = 6;
    }
    for (uint8_t j = 0; j < (HEIGHT * WIDTH); j += WIDTH) {
        IO_OUT = j;
        IO_OUT = 6;
        IO_OUT = j + (WIDTH - 1);
        IO_OUT = 6;
    }

    return 0;
}
*/

// Script to multiply two bytes together and return the sum.

uint8_t main(uint8_t a, uint8_t b) {
    uint8_t k = 0;
    do {
        k--;
        uint8_t l = k + k;
        *(uint8_t*)(0x200 + k) = l;
        *(uint8_t*)(0x300 + l) = k;
    } while (k > 0);

    uint8_t sum = 0;
    for (uint8_t i = 0; i < a; ++i) {
        sum += b;
    }

    return sum;
}
