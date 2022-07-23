import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  const Feed({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            ButtonBar(
              // 버튼 바
              alignment: MainAxisAlignment.start, // 중앙 정렬
              buttonPadding: EdgeInsets.all(20), // 버튼의 패딩 주기
              children: [
                ElevatedButton(onPressed: () {}, child: Text('시나리오')),
                ElevatedButton(onPressed: () {}, child: Text('편집')),
              ],
            )
          ]),
        ),

        // 제목
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "편집기사 구합니다!",
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // 설명
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            " 독립영화 '오늘은 맑음'에서 함께 편집 작업하실 기사 분 구합니다~! 분량은 20~30분 내외의 짧은 단편영화입니다!",
          ),
        ),

        // 이미지
        Image.network(
          "https://media.triple.guide/triple-cms/c_limit,f_auto,h_1024,w_1024/56f92153-a78e-4257-a0fc-a08b664c2d44.jpeg",
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),

        // 아이콘 목록
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.heart,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.chat_bubble,
                color: Colors.black,
              ),
            ),
            Spacer(), // 빈 공간 추가
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.bookmark,
                color: Colors.black,
              ),
            ),
          ],
        ),

        // 좋아요
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "2 likes",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // 날짜
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "FEBURARY 6",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),

// 다음 섹션구분/////////////////////////////////////////////

        Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            ButtonBar(
              // 버튼 바
              alignment: MainAxisAlignment.start, // 중앙 정렬
              buttonPadding: EdgeInsets.all(20), // 버튼의 패딩 주기
              children: [
                ElevatedButton(onPressed: () {}, child: Text('시나리오')),
                ElevatedButton(onPressed: () {}, child: Text('편집')),
              ],
            )
          ]),
        ),

        // 제목
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "편집기사 구합니다!",
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // 설명
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            " 독립영화 '오늘은 맑음'에서 함께 편집 작업하실 기사 분 구합니다~! 분량은 20~30분 내외의 짧은 단편영화입니다!",
          ),
        ),

        // 이미지
        Image.network(
          "https://media.triple.guide/triple-cms/c_limit,f_auto,h_1024,w_1024/56f92153-a78e-4257-a0fc-a08b664c2d44.jpeg",
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),

        // 아이콘 목록
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.heart,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.chat_bubble,
                color: Colors.black,
              ),
            ),
            Spacer(), // 빈 공간 추가
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.bookmark,
                color: Colors.black,
              ),
            ),
          ],
        ),

        // 좋아요
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "2 likes",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // 날짜
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "FEBURARY 6",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
