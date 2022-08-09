import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'board_service.dart';
import 'auth_service.dart';
import 'home_page.dart';

class PostDetail extends StatefulWidget {
  const PostDetail({Key? key}) : super(key: key);
  @override
  State<PostDetail> createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  TextEditingController titleController = TextEditingController();
  TextEditingController maintextController = TextEditingController();
  TextEditingController mainMediaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authService = context.read<AuthService>();
    final user = authService.currentUser()!;
    return Consumer<BoardService>(builder: (context, boardService, child) {
      return Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    labelText: "제목",
                  ),
                ),
                TextField(
                  obscureText: true,
                  controller: maintextController,
                  decoration: InputDecoration(
                    labelText: "내용",
                  ),
                ),
                TextField(
                  obscureText: true,
                  controller: mainMediaController,
                  decoration: InputDecoration(
                    labelText: "영상위치",
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
                            if (titleController.text.isNotEmpty) {
                              if (maintextController.text.isNotEmpty) {
                                boardService.create(
                                    mainMediaController.text,
                                    maintextController.text,
                                    titleController.text,
                                    user.uid);
                              }
                            }
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Text("확인"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Text("취소"),
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
