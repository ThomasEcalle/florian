import 'package:cours_florian/navigation/screens/screen_a.dart';
import 'package:cours_florian/navigation/screens/screen_b.dart';
import 'package:flutter/material.dart';

import 'screens/screen_c.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ScreenA(),
                  ),
                );
              },
              child: const Text('Screen A'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(ScreenB.routeName);
              },
              child: const Text('Screen B'),
            ),
            ElevatedButton(
              onPressed: () {
                ScreenC.navigateTo(context, 42);
              },
              child: const Text('Screen C'),
            ),
          ],
        ),
      ),
    );
  }
}
