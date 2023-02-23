import 'package:flutter/material.dart';

class PinkSquare extends StatelessWidget {
  const PinkSquare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
