import 'package:flutter/material.dart';
import 'package:todo_app_flutter/screen/home.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        textTheme: const TextTheme().copyWith(
          displayLarge: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          displayMedium: const TextStyle(
            fontSize: 15,
          ),
          labelSmall: const TextStyle(
            color: Colors.black,
            fontSize: 11,
          ),
          labelMedium: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      home: const Home(),
    ),
  );
}
