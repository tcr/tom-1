char mul(unsigned char, unsigned char);

void main() {
   unsigned char a = 5;
   unsigned char b = 6;
   volatile unsigned char c = mul(a, b);
}

char mul(unsigned char a, unsigned char b) {
	return a - b;
}

typedef unsigned char uint8_t;

uint8_t testFunction(uint8_t* input, uint8_t length) {
  uint8_t sum = 0;
  for (uint8_t i = 0; i < length; ++i) {
    sum += input[i];
  }
  return sum;
}
