#include <stdio.h>
#include <stdlib.h>

int sum(int a, int b);

int main(int argc, char *argv[]) {

  if (argc < 3) {
    printf("Syntax: ./assembly numA numB\n");
    return 1;
  }

  int b = strtol(argv[2], NULL, 10);
  int a = strtol(argv[1], NULL, 10);

  int total = sum(a, b);
  printf("The sum of %i + %i is equal to %i\n", a, b, total);
  
  return 0;
}

int sum(int a, int b) {
  int result;

  __asm__(
    "mov eax, %[a]\n"
    "add eax, %[b]\n"
    "mov %[sumResult], eax"
    :[sumResult] "=r" (result)
    :[a] "r" (a), [b] "r" (b)
  );

  return result;
}
