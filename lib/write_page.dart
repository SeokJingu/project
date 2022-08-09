import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/postdetail.dart';
import 'package:provider/provider.dart';
import 'auth_service.dart';

class WritePage extends StatefulWidget {
  const WritePage({Key? key}) : super(key: key);

  @override
  State<WritePage> createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {
  get children => null;
  get title => null;
  // void _onItemTapped(int index) {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthService>(builder: (context, authService, child) {
      final user = authService.currentUser();
      return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(1),
            child: Image.asset('image/logo.png',
                width: 1, height: 1), //이미지 크기 조정 안됨
          ),
          actions: [
            IconButton(
              onPressed: () {
                print({user});
              },
              icon: Icon(CupertinoIcons.search, color: Colors.black),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.bell, color: Colors.black),
            ),
          ],
          backgroundColor: Colors.white,
        ),
        body: Center(child: PostDetail()),
      );
    });
  }
}
