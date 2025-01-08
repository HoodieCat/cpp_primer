#include <stdio.h>
int sum(int a, int b) { return a + b; }
int main() {
  printf("%s\n", "Hello");
  int i1 = 1;
  int i2 = i1 * 2;
  int i3 = sum(i1, i2);
  printf("%s\n", "test1");
  int i4 = sum(i3, i3);
  printf("%s\n", "test2");
  return 0;
}
