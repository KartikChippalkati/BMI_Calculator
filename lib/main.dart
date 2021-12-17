import 'package:flutter/material.dart';
import 'input_page.dart';
import 'Results_page.dart';
import 'Calculator_Brain.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //Always the "routes" must be next to the MaterialApp()
      //Always the Multiple Screens are arranged in the Stack
      initialRoute: '/home',

      routes: {
        '/home': (context) => InputPage(),
        '/resultScreen': (context) => ResultsPage(),
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0E0F1F),
        scaffoldBackgroundColor: Color(0xFF131126),

//textTheme is not used in the dark theme bcz dark theme has default white color for its text
        //this textTheme widget will help us to change the color of the text of the particular text in the app
      ),
      //anything changes in the appereance in the widget and the user appereance con be made with this widget
      // this ThemeData()  will apply on the entire app

      //this below code is an example of how to chnage the background color
      //using .copyWith( ) we can extract the default theme of some particular widget and change the thigs what we want
      /*
           primaryColor:Color(
                0xFF0E0F1F), //while adding hex color code , always remove that default # symbol and add 0xFF in place of #
        scaffoldBackgroundColor: Color(0xFF131126),

       textTheme: TextTheme(
            body1: TextStyle(
                color: Colors
                    .white)), //this textTheme widget will help us to change the color of the text of the particular text in the app
      */
      home: InputPage(),
    );
  }
}
