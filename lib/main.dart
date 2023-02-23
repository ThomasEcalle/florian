import 'package:cours_florian/navigation/navigation_screen.dart';
import 'package:cours_florian/navigation/screens/screen_a.dart';
import 'package:cours_florian/navigation/screens/screen_b.dart';
import 'package:cours_florian/navigation/screens/screen_c.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 42,
            color: Colors.deepOrangeAccent,
          ),
        ),
      ),
      routes: {
        '/ScreenA': (context) => const ScreenA(),
        ScreenB.routeName: (context) => const ScreenB(),
        '/': (context) => const NavigationScreen(),
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case ScreenC.routeName:
            if (settings.arguments is int) {
              return MaterialPageRoute(
                builder: (context) => ScreenC(
                  id: settings.arguments as int,
                ),
              );
            }
            break;
        }
        return null;
      },
    );
  }
}
