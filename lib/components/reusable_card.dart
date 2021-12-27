import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  ReusableCard({Key? key, required this.colour, this.cardChild, this.onPres})
      : super(key: key);

  final Color colour;
  final Widget? cardChild;
  final VoidCallback? onPres;
  //final void Function()? onPres;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPres,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}