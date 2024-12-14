
import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  ReuseableCard( this.colour, this.cardChild );
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: cardChild,
      width: double.infinity,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}
