int findGCD(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}

void main() {
  int num1 = 24;
  int num2 = 18;
  int gcd = findGCD(num1, num2);
  print('Ước chung lớn nhất của $num1 và $num2 là: $gcd');
}
