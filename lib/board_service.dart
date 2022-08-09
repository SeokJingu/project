import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BoardService extends ChangeNotifier {
  final boradCollection = FirebaseFirestore.instance.collection('project');

  Future<QuerySnapshot> read(String uid) async {
    // 내 bucketList 가져오기
    throw UnimplementedError(); // return 값 미구현 에러
  }

  void create(String url, String text, String title, String uid) async {
    // bucket 만들기
    await boradCollection.add({
      'uid': uid, // 유저 식별자
      'text': text, // 메인 내용
      'title': title, // 제목
      'image': url, // 영상 url
    });
  }

  void update(String docId, bool isDone) async {
    // bucket isDone 업데이트
  }

  void delete(String docId) async {
    // bucket 삭제
  }
}
