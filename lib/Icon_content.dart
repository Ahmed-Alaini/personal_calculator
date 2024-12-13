import 'package:flutter/material.dart';
import 'input_page.dart';
class IconContent extends StatelessWidget {
  final IconData icon;
  String label;
  IconContent(this.icon,this.label);

  @override
  Widget build(BuildContext context) {
    return (
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Colors.white,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),)
      ],
    )
    );
  }
}