
class CounterModel {
  CounterModel._();
  static final _model = CounterModel._();
  factory CounterModel() {
    return _model;
  }

int counter = 0;
}