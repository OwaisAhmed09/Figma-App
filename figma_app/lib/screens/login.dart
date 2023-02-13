import 'dart:html';
import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:newapp/screens/home_view.dart';
import 'package:newapp/utils/color_constants.dart';
import 'package:newapp/utils/text_constants.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  login() {
    if (email.text == 'admin@gmail.com' && password.text == '123456') {
      print("Login Successful");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeView()),
      );
    } else {
      print("Login failed");
      setState(() {
        TextConstants.loginErrorText = 'Login failed';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      // body of container
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/OMZ.jpg"), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Welcome to OoMmZzz",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 50,
                      fontStyle: FontStyle.italic,
                      shadows: [
                        BoxShadow(
                            color: Colors.deepOrange,
                            offset: Offset(5, 10),
                            blurRadius: 3)
                      ],
                      decorationStyle:
                          TextDecorationStyle.double, //double underline
                      decorationThickness: 1.5)),
              SizedBox(height: MediaQuery.of(context).size.height * 0.4),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                width: w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // text of top-------
                    Text(
                      "Create Account",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      // email text field------------------------------
                      controller: email,
                      obscureText: false,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.email,
                          color: Colors.green,
                        ),
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.green),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Password text field-------------------------
                    TextField(
                      controller: password,
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 252, 7, 7),
                        ),
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: 'Password',
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 248, 4, 4)),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Sigin  Button --------------------------
                    SizedBox(
                      width: 100.0,
                      height: 30.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(255, 4, 83, 12))),
                        onPressed: () {
                          login();
                        },
                        child: Text(TextConstants.loginText),
                      ),
                    ),
                  ],
                ),
                // Text(
                //   TextConstants.loginErrorText,
                //   style:
                //       TextStyle(fontSize: 35, color: ColorConstants.errorColor),
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
