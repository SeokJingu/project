import 'package:flutter/material.dart';
import 'package:project/login_page.dart';
import 'package:provider/provider.dart';

import 'auth_service.dart';

class signup extends StatefulWidget {
  // const SplashPage({Key: key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
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
                    hintText: "이메일",
                  ),
                ),
                TextField(
                  controller: passwordController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: "비밀번호",
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    labelText: "닉네임",
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
                            authService.signUp(
                              email: emailController.text,
                              password: passwordController.text,
                              onSuccess: () {
                                // 회원가입 성공
                                print("회원가입 성공");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => loginpage()),
                                );
                              },
                              onError: (err) {
                                // 에러 발생
                                print("회원가입 실패 : $err");
                              },
                            );
                          },
                          child: Text("회원가입"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            print("aa");
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => loginpage()),
                            );
                          },
                          child: Text("뒤로가기"),
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
