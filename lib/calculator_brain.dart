import 'dart:math';
class CalculatorBrain{

  CalculatorBrain({required  this.height, required  this.weight});

  final int? height;
  final int? weight;

  late double _bmi;

  String calculateBMI(){
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if (_bmi >=25){
      return 'Overweight';
    }
    else if (_bmi > 18){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if (_bmi >=25){
      return 'You have higher than normal body weight. Try to exercise more.';
    }
    else if (_bmi > 18){
      return 'You have normal body weight. Good Job!';
    }
    else{
      return 'You have lower than normal body weight. You can eat more.';
    }



  }


}