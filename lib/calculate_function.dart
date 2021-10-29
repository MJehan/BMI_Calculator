import 'dart:math';

class CalculatorFunction {
  CalculatorFunction({required this.height, required this.weight});

  final int height;
  final int weight;

  double minBIM = 18.5;
  double maxBIM = 24.9;
  double? _bmi;
  int? _bmiMaxInterpretation;
  int? _bmiMinInterpretation;

  String calculateBMI() {
    _bmi = weight / pow(height * 0.0254, 2);
    _bmiMinInterpretation = (minBIM * pow(height * 0.0254, 2)).toInt();
    _bmiMaxInterpretation = (maxBIM * pow(height * 0.0254, 2)).toInt();
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
    return 'Your Normal Weight Range is $_bmiMinInterpretation kg to $_bmiMaxInterpretation kg';
  }

}
