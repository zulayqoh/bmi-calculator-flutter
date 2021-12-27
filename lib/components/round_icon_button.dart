import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key, required this.icon, this.onpress})
      : super(key: key);

  final IconData icon;
  final void Function()? onpress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpress,
      fillColor: Color(0xFF4C4F5C),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(icon),
      elevation: 0.0,
    );
  }
}
