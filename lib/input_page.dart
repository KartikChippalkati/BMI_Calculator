import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reusable_card.dart';
import 'Card_child_class.dart';
import 'constants.dart';

import 'Round_Button.dart';
import 'Calculator_Brain.dart';
import 'Results_page.dart';

//enums are like functions where we can store the data and access that data just by calling that enum name and that data
//enums are very usefull if w have more than one property for an object or card
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 50;
  int Age = 15;
  // At first the selectedGender will be st to null,null means it is set to false statement . false statement is inactiveCardColor.Once u press any button then that will be changed to activeCardColor and other remains in inactiveCardColor.But when u press other button,then as button is set in setState mode the whole program will be re executed from first and selectedGender is again set to null(i.e inactiveCardColor) and same process repeats

  // var ob = new Container_Ui();

  //Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;

  //ternary operator is nothing but reducing the code for if(){ } and else{ }
  // without writing the if and else keywords and brackets we can check for if and else

  // void updateColor(Gender selectedGender) {
  //when male button is pressed
  //male = 1
  // if (selectedGender == Gender.male) {
  //   if (maleCardColor == inactiveCardColor) {
  //    maleCardColor = activeCardColor;
  //    femaleCardColor = inactiveCardColor;
  //} else {
  //  maleCardColor = inactiveCardColor;
  //  }
  // }
// when female button is pressed
//female = 2
  // if (selectedGender == Gender.female) {
  //   if (femaleCardColor == inactiveCardColor) {
  //   femaleCardColor = activeCardColor;
  //    maleCardColor = inactiveCardColor;
  // } else {
  //    femaleCardColor = inactiveCardColor;
  //  }
  // }
  //}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Reusablecontainer(
                      onPress: () {
                        //as onPress is a function we have to define that variable like this
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male //ternary operator
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: CardChildClass(
                        mainContainerIcon: FontAwesomeIcons.mars,
                        containerText: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Reusablecontainer(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female //ternary operator
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: CardChildClass(
                        mainContainerIcon: FontAwesomeIcons.venus,
                        containerText: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Reusablecontainer(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: kTextStyling,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberStyling,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'cm',
                          style: kTextStyling,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        thumbColor: Color(0xFFEB1555),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                        overlayColor: Color(0x29EB1555),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 250.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  // ob.ui(Colors.pinkAccent),
                  //ob.ui(Colors.green),
                  Expanded(
                    child: Reusablecontainer(
                      colour: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: kTextStyling,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberStyling,
                          ),

                          //Floating action button should be used only once in one screen
                          //So we have to dig deep into floating action button
                          //Bal Ki Kahl Nikalana of FloatingActionButton , press Command and click on that keyword to dig deep
                          //So we use RawMaterialButton and customize it
                          //FloatingActionButton is created from the basic component called RawMaterialButton
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  // as onPressed is defines as a function we have to put ( ) and { } brackets and we have to write the action in between that flower brackets only
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Reusablecontainer(
                      colour: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: kTextStyling,
                          ),
                          Text(
                            Age.toString(),
                            style: kNumberStyling,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  // as onPressed is defines as a function we have to put ( ) and { } brackets and we have to write the action in between that flower brackets only
                                  setState(() {
                                    Age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    Age++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  CalculatorBrain calc =
                      CalculatorBrain(Height: height, Weight: weight);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultsPage(
                        bmiResult: calc.CalculateBMI(),
                        interpretation: calc.getInterpretation(),
                        resultText: calc.getResult(),
                      ),
                    ),
                  );
                });
              },
              child: Container(
                // padding: EdgeInsets.fromLTRB(120.0, 20.0, 120.0, 20.0),
                //As the button is very close to bottom we add padding
                padding: EdgeInsets.only(bottom: 10.0),
                child: Center(
                  child: Text(
                    'CALCULATE',
                    style: kBottomButtonStyling,
                  ),
                ),
                color: kBottomContainerColour,
                margin: EdgeInsets.only(top: 20.0),
                height: kBottomContainerHeight,
                width:
                    double.infinity, // to stretch the container on whole screen
              ),
            ),
          ],
        ),
      ),
    );
  }
}
