import 'package:flutter/material.dart';
import 'constants.dart';

const sizebox = SizedBox(
  height: 15.0,
);

class CardChildClass extends StatelessWidget {
  final IconData mainContainerIcon;
  final String containerText;
  CardChildClass({this.mainContainerIcon, this.containerText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          mainContainerIcon,
          size: 80.0,
        ),
        sizebox,
        Text(
          containerText,
          style: kTextStyling,
        )
      ],
    );
  }
}
