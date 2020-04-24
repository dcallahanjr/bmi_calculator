import 'dart:math';

class BMICalculator {
  final double height;
  final int weight;

  double _bmi;

  BMICalculator({this.height, this.weight});

  String calculateBMI() {

    int inches = (height.truncate()*12.0 +
        ((height * 10.0) - (height.truncate() * 10.0))).ceil();

    _bmi = (weight / pow(inches, 2)) * 703;
    print(height.toStringAsFixed(1));
    print(weight.toString());
    print(inches.toString());
    print(_bmi.toStringAsFixed(1));
    return _bmi.toStringAsFixed(1);
  }

  String getResults(){
    if(_bmi >= 25) {
      return 'Overweight';
    }else if(_bmi > 18.5) {
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25) {
      return 'You have a higher then normal body weight. Try to exercise more.';
    }else if(_bmi > 18.5) {
      return 'You have a normal body weight. Good Job!';
    }
    else{
      return 'You have a lower then normal body weight. You can eat a bit more.';
    }
  }

}