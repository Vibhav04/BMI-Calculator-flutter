import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  late double _bmi;

  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else if (_bmi >= 30) {
      return 'Obese';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight, Good Job!';
    } else if (_bmi >= 30) {
      return 'You have a very high body weight. Try and reduce it.';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
