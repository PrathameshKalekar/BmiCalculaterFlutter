import 'dart:math';

class Calculater {
  final int height;
  final int weight;
  Calculater({required this.height, required this.weight});
  late double _bmi;
  String claculaterBMI() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String interPritation() {
    if (_bmi >= 25) {
      return 'You have a higher tha normal body weight. try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You hav a normal body weight. Goof job !';
    } else {
      return 'You have a lower than normal body weight, you can ear a bit more';
    }
  }
}
