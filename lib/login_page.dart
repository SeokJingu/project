// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:project/google_demo.dart';

class loginpage extends StatefulWidget {
  // const SplashPage({Key: key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('image/logo.png', width: 100, height: 100),
          ],
        ),
      ),
    );
  }
}
