#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define flags ((volatile char*)(0x1000))

void inline sieve(void) {
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
}

int main(uint8_t a, uint8_t b) {
    uint8_t k = 0, sum = 0, i;
    do {
        k--;
        uint8_t l = k + k;
        *(uint8_t*)(0x200 + k) = l;
        *(uint8_t*)(0x300 + l) = k;
    } while (k > 0);

    sum = 0;
    for (i = 0; i < a; ++i) {
        sum += b;
    }

    sieve();

    return sum;
}
