import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  //const RoundIconButton({Key? key}) : super(key: key);
  final IconData
      icon; //As we want just icon data i.e wha shoud be the icon like plus or minus,So we just take icondata
  final Function onPressed;
  RoundIconButton({@required this.icon, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child:
          Icon(icon), //Remember in Icon(icon), Icon is widget and icon is data
      onPressed: onPressed,

      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
    );
  }
}
