import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'Reusable_card.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  //const ResultsPage({Key? key}) : super(key: key);
  ResultsPage(
      {@required this.bmiResult,
      @required this.interpretation,
      @required this.resultText});
  final bmiResult;
  final interpretation;
  final resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(50.0, 50.0, 50.0, 10.0),
              //in place of margin , u can also add padding and alignment

              // padding: EdgeInsets.all(15.0),
              // alignment: Alignment.bottomLeft,

              child: Text(
                'Your Results',
                style: kResultPageTextStyle,
              ),
            ),
          ),
          Expanded(
            flex:
                5, // if any container is taking the larger area on the screen then we define the "flex" property which is the default property of the Expanded, by default flex = 1 . flex is used to make the container ocuupy more space than the container , it is like a ratio which is compared to other
            child: Reusablecontainer(
              //here this container is taking 5 times more space than the other container
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                //you can use only once crossAxisAlignment and mainAxisAlignment for a row or a column
                children: [
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMIResultTextStyling,
                  ),
                  Text(
                    interpretation, // Always by default , all texts are aligned to the left, so if we want to change position of the text we use textAlign:
                    textAlign: TextAlign.center,
                    style: kFinalResultTextStyling,
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Container(
              color: kBottomContainerColour,
              height: kBottomContainerHeight,
              width: double.infinity,
              //margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: kBottomButtonStyling,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
