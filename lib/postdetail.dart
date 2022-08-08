import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class PostDetail extends StatelessWidget {
//   const PostDetail({Key? key}) : super(key: key);

//   get children => null;

//   get title => null;

//■■■■■■■■■■■■■■

class PostDetail extends StatefulWidget {
  // Map<String, String> data;
  // PostDetail({Key key, this.data}) : super(key: key);

  @override
  _PostDetailState createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  late Size size;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    size = MediaQuery.of(context).size;
  }

  Widget _appbarWidget() {
    return AppBar(backgroundColor: Colors.transparent, elevation: 0, actions: [
      IconButton(onPressed: () {}, icon: Icon(Icons.share)),
      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
    ]);
  }
  // Widget _appbarWidget() {
  //   return AppBar(
  //     leading: IconButton(
  //       onPressed: () => Navigator.pop(context),
  //       icon: _makeIcon(Icons.arrow_back),
  //     ),
  //     backgroundColor: Colors.white.withAlpha(locationAlpha.toInt()),
  //     elevation: 0,
  //     actions: [
  //       IconButton(onPressed: () {}, icon: _makeIcon(Icons.share)),
  //       IconButton(onPressed: () {}, icon: _makeIcon(Icons.more_vert)),
  //     ],
  //   );
  // }

  Widget _bodyWidget() {
    return Container(
      child: Image.network(
        "https://media.triple.guide/triple-cms/c_limit,f_auto,h_1024,w_1024/56f92153-a78e-4257-a0fc-a08b664c2d44.jpeg",
        height: 200,
        width: size.width,
        fit: BoxFit.fill,
      ),
      // Image.asset(widget.data["image"], width: 100, fit: BoxFit.fill),
    );
  }

  Widget _sellerSimpleInfo() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(50),
          //   child: Container(
          //     width: 50,
          //     height: 50,
          //     child: Image.asset("assets/images/user.png"),
          //   ),
          // )
          CircleAvatar(
            radius: 25,
            backgroundImage: Image.asset("assets/images/user.png").image,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "영상하는남자",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text("서울시 용산구"),
            ],
          ),
          // Expanded(
          //   child: ManorTemperature(manorTemp: 37.3),
          // )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _appbarWidget(),
      body: _bodyWidget(),
    );
  }
}





//■■■■■■■■■■■■■■







//     return Container(
//       child: Center(
//         child: Text(widget.data["title"]),
//       ),
//     );
//   }
// }
