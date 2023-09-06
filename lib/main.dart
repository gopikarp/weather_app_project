import 'package:flutter/material.dart';
import 'package:weather_app/screen/home_screen.dart';

void main(List<String> args) {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData.dark().copyWith(
          
          ),
      home: HomeScreen(),
    );
  }
}
