import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newapp/screens/login.dart';

class Splash_screen extends StatefulWidget {
  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => login_view(),
          ));
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(

              // crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Image(
                    image: AssetImage('assets/images/OMZ.jpg'),
                    fit: BoxFit.fitWidth),
              ]),
        ),
      ),
    );
  }
}
