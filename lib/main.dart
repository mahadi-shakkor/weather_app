import 'package:flutter/material.dart';
import 'package:weather_app/page3.dart';
import 'package:weather_app/plash_sceen.dart';
import 'package:weather_app/todays_weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Page3(),
    );
  }
}
