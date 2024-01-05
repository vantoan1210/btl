int calculateSum(int n) {
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}

void main() {
  int n = 5; // Thay đổi giá trị của n ở đây
  int result = calculateSum(n);
  print('Tổng các số từ 1 đến $n là: $result');
}
