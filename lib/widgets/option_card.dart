import 'package:flutter/material.dart';
import '../constants.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({
    Key? key,
    required this.option,
    required this.color,
  }) : super(key: key);

  final String option;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150, // Adjust the width of the options box
      height: 100, // Adjust the height of the options box
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0), // Adjust the border radius to make it rounded
        ),
        child: ListTile(
          title: Text(
            option,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0, // Adjust the font size to make it smaller
              color: color.red != color.green ? Colors.black26 : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
