import 'package:flutter/material.dart';
import 'input_page.dart';

class Container_Ui {
  Expanded ui(Color colour) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
