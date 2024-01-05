String reverseString(String input) {
  return input.split('').reversed.join();
}

void main() {
  String str = 'HUMG'; // Thay đổi chuỗi cần đảo ở đây
  String reversed = reverseString(str);
  print('Chuỗi đảo ngược của $str là: $reversed');
}
