int calculateFactorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  }
  return n * calculateFactorial(n - 1);
}

void main() {
  int number = 5; // Thay đổi số cần tính giai thừa ở đây
  int result = calculateFactorial(number);
  print('Giai thừa của $number là: $result');
}
