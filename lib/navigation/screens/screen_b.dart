import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  static const String routeName = '/ScreenB';

  const ScreenB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen B'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Screen B'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/ScreenA');
              },
              child: Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}
