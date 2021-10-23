import 'dart:math';

class CalculatorFunction {
  CalculatorFunction({required this.height, required this.weight});

  final int height;
  final int weight;

  double? _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height * 0.0254, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! < 16.0) {
      return 'Severely Underweight';
    }
    else if (_bmi! >= 16.0 && _bmi! <= 18.4) {
      return 'Underweight';
    }
    else if (_bmi! >= 18.5 && _bmi! <= 24.9) {
      return 'Normal';
    }
    else if (_bmi! >= 25.0 && _bmi! <= 29.9) {
      return 'Overweight';
    }
    else if (_bmi! >= 30.0 && _bmi! <= 34.9) {
      return 'Moderately Obese';
    }
    else if (_bmi! >= 35.0 && _bmi! <= 39.9) {
      return 'Severely Obese';
    }
    else {
      return 'Morbidly Obese';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi! >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
