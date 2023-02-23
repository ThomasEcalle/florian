import 'package:cours_florian/header.dart';
import 'package:flutter/material.dart';

class BWidget extends StatelessWidget {
  const BWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 2,
              child: Header(),
            ),
            Expanded(
              child: Stack(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                  Positioned.fill(
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.black.withOpacity(.5),
                    ),
                  ),
                  Center(
                    child: Text(
                      'coucou',
                      style: TextStyle(fontSize: 23, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
