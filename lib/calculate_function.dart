import 'dart:math';

class CalculatorFunction {
  CalculatorFunction({required this.height, required this.weight});

  final int height;
  final int weight;


  //double min = 18.5;
  //double max = 24.9;
  double? _bmi;
  double? _bmiMaxInterpretation;
  double? _bmiMinInterpretation;

  String calculateBMI() {
    _bmi = weight / pow(height * 0.0254, 2);
    return _bmi!.toStringAsFixed(1);
  }
  double minBMIInterpretation(){
    _bmiMinInterpretation = 18.5 * pow(height * 0.0254, 2);
    print(_bmiMinInterpretation!.toStringAsFixed(1));
    return _bmiMinInterpretation!.toDouble();

  }

  String maxBMIInterpretation(){
    _bmiMaxInterpretation = 24.9 * pow(height * 0.0254, 2);
    print(_bmiMaxInterpretation);
    return _bmiMaxInterpretation!.toStringAsFixed(1);
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
    print(_bmiMaxInterpretation);
    print(_bmiMinInterpretation);
    return 'Your Normal Weight Range is $_bmiMinInterpretation kg to $_bmiMaxInterpretation kg';
  }
}
