import 'dart:math';

class CalculatorBrian{
  CalculatorBrian({ required this.height, required this.weight, });
  final int height;
  final int weight;

  late final double _bim;
  String calculateBMI(){
    _bim = weight/pow(height/100,2);
    return _bim.toStringAsFixed(1);
  }
  String getResult(){
    if (_bim >= 25){
      return 'Over Weight';
    }else if (_bim > 18.5){
      return'Normal';
    } else{
      return 'underweight';
    }
  }
  String getInterpretation(){
    if (_bim >= 25){
      return 'you have a higher than normal weight.try to Exercise more.';
    }else if (_bim >18.5){
      return'You have a normal body weight . Good Job!';
    } else{
      return 'You Have a lower than normal body weight.You eat a bit more';
    }
  }

}
