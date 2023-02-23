import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  static const routeName = '/ScreenC';

  static void navigateTo(BuildContext context, int id) {
    Navigator.of(context).pushNamed(
      routeName,
      arguments: id,
    );
  }

  const ScreenC({
    Key? key,
    required this.id,
  }) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen C'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Screen C : $id'),
          ],
        ),
      ),
    );
  }
}
