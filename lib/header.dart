import 'package:cours_florian/pink_square.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({Key? key}) : super(key: key);

  final List<PinkSquare> _list = List.generate(15, (index) => const PinkSquare());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.red,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: _list,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: const [
                    PinkSquare(),
                    SizedBox(width: 10),
                    PinkSquare(),
                    Spacer(),
                    PinkSquare(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
