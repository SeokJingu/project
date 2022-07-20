import 'package:flutter/material.dart';
import 'package:project/login_page.dart';

class signup extends StatefulWidget {
  // const SplashPage({Key: key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
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
                        onPressed: () {},
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
