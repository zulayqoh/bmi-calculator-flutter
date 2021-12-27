import 'dart:math';

class BMICalculatorBrain {
  BMICalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  double? bmi;

   String calculateBMI() {
    bmi = (weight / pow(height/100, 2));
    return bmi!.toStringAsFixed(1);

  }

  String getBMIResult() {
    if (bmi! < 19) {
      return 'Underweight';
    } else if (bmi! < 25) {
      return 'Normal';
    } else {
      return 'Overweight';
    }
  }

  String interpretBMI() {
    if (bmi! < 19) {
      return 'You should eat more to keep healthy';
    } else if (bmi! < 25) {
      return 'Your health is good, maintain it';
    } else {
      return 'You need to cut down on calories and exercise more often';
    }
  }
  /*
String getBMIResult() {
    String result = '';
    if (_bmi! >= 25) {
      result = 'Overweight';
    } else if (_bmi! > 18.5) {
      result = 'Normal';
    } else {
      result = 'Underweight';
    }
    return result;
  }

  String interpretBMI() {
    String result = '';
    if (_bmi! >= 25) {
      result = 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi! > 18.5) {
      result = 'You have a normal body weight.';
    } else {
      result = 'You have a lower than normal body weight. You can eat more.';
    }
    return result;
  }
   */

}