// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:project/home_page.dart';
import 'package:project/sign_up.dart';
import 'package:provider/provider.dart';

import 'auth_service.dart';

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthService>(builder: (context, authService, child) {
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
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "이메일",
                  ),
                ),
                TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: "비밀번호",
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  //margin: EdgeInsets.only(top: 24),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // 로그인
                            authService.signIn(
                              email: emailController.text,
                              password: passwordController.text,
                              onSuccess: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                                // 로그인 성공
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text("로그인 성공"),
                                ));
                              },
                              onError: (err) {
                                // 에러 발생
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text(err),
                                ));
                              },
                            );
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
    });
  }
}
