import 'package:flutter/material.dart';

class Reusablecontainer extends StatelessWidget {
  final Color colour; //always the data type of the colour is 'Color'
  final Widget cardChild;
  final Function
      onPress; // we can define the data type of a variable as a function when we want to pass the function as a parameter

  //when we want to pass the function as a parameter in the constructor then we define that variable datatype as a Function

  Reusablecontainer({@required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          onPress, // it is like a property,so we don't have to put round brackets just put comma
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          //color: Colors.yellow,
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
