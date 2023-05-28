import 'package:flutter/material.dart';
import 'package:quiz/home/screens/home.dart';
import 'package:quiz/home/constants/theme.dart' show kThemeData;

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz Application",
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => Directionality(
              textDirection: TextDirection.rtl,
              child: Home(),
            ),
      },
      theme: kThemeData,
    );
  }
}
