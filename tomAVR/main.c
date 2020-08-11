typedef unsigned char uint8_t;
typedef unsigned short uint16_t;

/*
uint8_t main(uint8_t a, uint8_t b) {
  uint8_t sum = 0;
  for (uint8_t i = 0; i < a; ++i) {
    sum += b;
  }
  return sum;
}
*/

// https://github.com/embecosm/avr-gcc/blob/2060056813eb7bad1fd44a1620cc5e0223bcb75a/libgcc/config/avr/lib1funcs.S#L1316
// uint8_t __udivmodqi4(uint8_t a, uint8_t b) {
//     uint8_t rem, cnt;
//     asm(
//         "sub %0, %0\n\t"
//         "ldi %1, 0x09\n\t"
//         "rjmp    to_there%=\n"

//         "loop%=:\n\t"
//         "adc %0, %0\n\t"
//         "cp  %0, %3\n\t"
//         "brcs    to_there%=\n\t"
//         "sub %0, %3\n"
//         "to_there%=:\n\t"

//         "adc %2, %2\n\t"
//         "dec %1\n\t"
//         "brne    loop%=\n\t"
//         "com %2\n\t"
//         : "=r"(rem), "=r"(cnt), "=r"(a)
//         : "r"(b)
//         :
//     );
//     return a;
// }

/*
uint8_t main(uint8_t n, uint8_t base) {
    int sum = 0;
    for (; n; n = n / base) {
        sum += n % base;
    }
    asm("in r16, 2"); // force a combined return call
    return sum;
}
*/

#define _MMIO_BYTE(mem_addr) (*(volatile uint8_t *)(mem_addr))
#define _SFR_IO8(io_addr) _MMIO_BYTE(io_addr)

#define IO_IN  _SFR_IO8(0x10)
#define IO_OUT _SFR_IO8(0x20)

/*
// Outputs all values between A and Z
uint8_t main(uint8_t a, uint8_t b) {
    for (uint8_t i = 65; i < 91; i++) {
        IO_OUT = i;
    }
  return 0;
}
*/

/*
// Outputs all values in a circle
uint8_t main(uint8_t a, uint8_t b) {
    uint8_t j_o = 0;
    for (uint8_t j = 0; j < 8; j++) {
        for (uint8_t i = 0; i < 8; i++) {
            IO_OUT = j_o + i;
            IO_OUT = (i > 2 ? 6 : 4);
        }
        j_o += 8;
    }
    return 0;
}
*/

/*
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

// https://en.wikipedia.org/wiki/Byte_Sieve

#define flags ((volatile char*)(0x1000))

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

/*
    int i, prime, kv, count, iter, size;
    size=600;

    for (iter = 1;iter < 10;iter ++) {
        count = 0;
        for (i = 0; i <= size; i++) {
            flags[i] = 1;
        }
        for (i = 0; i <= size; i++) {
            if (flags[i]) {
                prime = i + i + 3;
                kv = 1 + prime;
                while (kv <= size) {
                    flags[kv] = 0;
                    kv += prime;
                }
                count = count + 1;
            }
        }
    }
    */

    return sum;
}
