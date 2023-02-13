import 'package:flutter/material.dart';
import 'package:newapp/screens/home_view.dart';
import 'package:newapp/screens/login.dart';
import 'package:newapp/screens/splash.dart';
import 'package:newapp/widgets/mediaquery_example.dart';
import 'package:newapp/widgets/stack_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_screen(),
    );
  }
}
