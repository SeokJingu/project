// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:project/google_demo.dart';
import 'package:project/home_page.dart';
import 'package:project/sign_up.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(32),
                child: Image.asset('image/logo.png', width: 100, height: 100),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: "이메일",
                ),
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "비밀번호",
                ),
              ),
              Container(
                width: double.infinity,
                //margin: EdgeInsets.only(top: 24),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print("aa");
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Text("로그인"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print("aa");
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => signup()));
                        },
                        child: Text("회원가입"),
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
