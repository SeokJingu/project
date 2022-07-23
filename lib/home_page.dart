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
  //0■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         _buildTop(),
//       ],
//     );
//   }

//   Widget _buildTop() {
//     return Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: <Widget>[
//           Column(
//             children: <Widget>[
//               Icon(
//                 Icons.local_taxi,
//                 size: 40,
//               ),
//               Text('시나리오')
//             ],
//           )
//         ]);
//   }
// }

//0,1■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading:
              // IconButton(
              //   icon: Icon(CupertinoIcons.camera, color: Colors.black),
              //   onPressed: () {},
              // )
              //     Image.asset(
              //   'image/logo.png',
              //   height: 1,
              // ),
              Padding(
            padding: const EdgeInsets.all(1),
            child: Image.asset('image/logo.png', width: 5, height: 5),
          ),
          // Center(
          //   child:
          //       Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          //     ButtonBar(
          //       // 버튼 바
          //       alignment: MainAxisAlignment.start, // 중앙 정렬
          //       buttonPadding: EdgeInsets.all(20), // 버튼의 패딩 주기
          //       children: [
          //         ElevatedButton(onPressed: () {}, child: Text('시나리오')),
          //         ElevatedButton(onPressed: () {}, child: Text('편집')),
          //       ],
          //     )
          //   ]),
          // ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.search, color: Colors.black),
            ),
          ],
          //1■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
          // title: Image.asset(
          //   'image/logo.png',
          //   height: 32,
          // ),
          //2■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
          backgroundColor: Colors.white,
        ),
        body: Feed(),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ])
        //2■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
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
        /////////////////////////////////////////

        // bottomNavigationBar: BottomNavigationBar(
        //   items: [
        //     BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
        //     BottomNavigationBarItem(icon: Icon(Icons.more), label: '더보기'),
        //     BottomNavigationBarItem(icon: Icon(Icons.more), label: '더보기2'),
        //   ],
        //   onTap: (index) {
        //     _idx = index;
        //   },
        //   currentIndex: _idx,
        // ),
        // /////////////////////////////////////////////
        // bottomNavigationBar: Container(
        //   color: Colors.white, //색상
        //   child: Container(
        //     height: 70,
        //     padding: EdgeInsets.only(bottom: 10, top: 5),
        //     child: const TabBar(
        //       //tab 하단 indicator size -> .label = label의 길이
        //       //tab 하단 indicator size -> .tab = tab의 길이
        //       indicatorSize: TabBarIndicatorSize.label,
        //       //tab 하단 indicator color
        //       indicatorColor: Colors.red,
        //       //tab 하단 indicator weight
        //       indicatorWeight: 2,
        //       //label color
        //       labelColor: Colors.red,
        //       //unselected label color
        //       unselectedLabelColor: Colors.black38,
        //       labelStyle: TextStyle(
        //         fontSize: 13,
        //       ),
        //       tabs: [
        //         Tab(
        //           icon: Icon(
        //             Icons.home_outlined,
        //           ),
        //           text: 'Home',
        //         ),
        //         Tab(
        //           icon: Icon(Icons.music_note),
        //           text: 'Music',
        //         ),
        //         Tab(
        //           icon: Icon(
        //             Icons.apps,
        //           ),
        //           text: 'Apps',
        //         ),
        //         Tab(
        //           icon: Icon(
        //             Icons.settings,
        //           ),
        //           text: 'Settings',
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        );
  }
}
