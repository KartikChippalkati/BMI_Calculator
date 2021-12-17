import 'dart:math';
import 'package:flutter/material.dart';

class CalculatorBrain {
  final int Height;
  final int Weight;
  CalculatorBrain({@required this.Height, @required this.Weight});

  /*
  always the claculation return double or int values
  So we defined _BMI as double
  But as we are returning the String value we have to convert that double _BMI into String, So we use _BMI.toString(),
  But this will convert this to string but it will have 10-15 decimal places ,As we want only upto 1 decimal place,we convet that double into String by giving
  _BMI.toStringAsFixed(number of decimal values u want)

if u use _BMI.toStringExponential(number of decimal values u want)  it will give the value in "e" large number

  We ar e returning the String values because the Text() which we defined earlier accepts only String

   once the variable is mentioned in the class locally, then we can use that variable in anywhere and in ay functions

   if u want to use the variable defined in one  function in other function then declare or make it as a local variable and the use like _BMI
   */

  double _BMI;
  String CalculateBMI() {
    _BMI = Weight / pow(Height / 100, 2);
    return _BMI.toStringAsFixed(1);
  }

  String getResult() {
    if (_BMI >= 25) {
      return 'OverWeight';
    } else if (_BMI > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_BMI >= 25) {
      return 'You have a higher than normal body weight,Try to exercise more.';
    } else if (_BMI > 18.5) {
      return 'You have a normal body weight.Good Job!.';
    } else {
      return 'You have a lower than normal body weight.You can eat bit more.';
    }
  }
}
