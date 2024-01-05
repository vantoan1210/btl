import 'dart:math';

List<double> solveQuadraticEquation(double a, double b, double c) {
  double delta = b * b - 4 * a * c;
  if (delta > 0) {
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    return [x1, x2];
  } else if (delta == 0) {
    double x = -b / (2 * a);
    return [x];
  } else {
    return [];
  }
}

void main() {
  double a = 1;
  double b = -3;
  double c = 2;
  List<double> roots = solveQuadraticEquation(a, b, c);
  if (roots.isEmpty) {
    print('Phương trình không có nghiệm thực.');
  } else if (roots.length == 1) {
    print('Nghiệm của phương trình là: ${roots[0]}');
  } else {
    print('Nghiệm của phương trình là: ${roots[0]} và ${roots[1]}');
  }
}
