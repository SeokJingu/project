import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feed.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  get children => null;

  get title => null;

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.camera, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.search, color: Colors.black),
          ),
        ],
        title: Image.asset(
          'image/logo.png',
          height: 32,
        ),
        backgroundColor: Colors.white,
      ),
      body: Feed(),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.business),
      //       label: 'Business',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.school),
      //       label: 'School',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: _onItemTapped,
      // ),
    );
  }
}
