// ignore_for_file: prefer_const_constructors
import 'dart:math';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Myclassroom extends StatelessWidget {
  Myclassroom({super.key});

  var mybox = Container();
  List<String> Nametag = [
    "Java nâng cao 6",
    "Java nâng cao 1 ",
    "Java nâng cao 2",
    "Java nâng cao 3",
    "Java nâng cao 4",
    "Java nâng cao 5",
  ];
  List<String> Name = [
    "Hà Nguyễn Hoàng",
    "Hà Nguyễn Hoàng 1 ",
    "Hà Nguyễn Hoàng 2",
    "Hà Nguyễn Hoàng 3",
    "Hà Nguyễn Hoàng 4",
    "Hà Nguyễn Hoàng 5",
  ];
  List<Color> colorList = [
    Color.fromARGB(255, 231, 41, 41),
    Color.fromARGB(255, 238, 218, 43),
    Color.fromARGB(255, 55, 235, 39),
    Color.fromARGB(255, 35, 113, 231),
    Color.fromARGB(255, 216, 35, 207),
    Color.fromARGB(255, 216, 35, 35),
  ];
  var imageList = [
    "assets/image/1.png",
    "assets/image/1.png",
    "assets/image/3.png",
    "assets/image/3.png",
    "assets/image/1.png",
    "assets/image/1.png",
  ];
  var boxstatus = Container(
    width: 500,
    height: 100,
    margin: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color.fromARGB(255, 212, 211, 211), width: 1),
        color: Colors.white),
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const <Widget>[
        SizedBox(height: 10),
        // Expanded(child: SizedBox.shrink()), // <-- Expanded
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 10, left: 6)),
            Text(
              "Tuần này",
              style: TextStyle(fontSize: 17),
            ),
            Padding(padding: EdgeInsets.only(top: 10, left: 90)),
            Text(
              "Xem danh sách việc cần làm",
              style: TextStyle(
                  fontSize: 15, color: Colors.blue, fontFamily: 'arial'),
            ),
          ],
        ),
        SizedBox(height: 42),
        Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(bottom: 10, left: 6)),
            Text(
              "Hiện không có bài tập nào",
              style: TextStyle(fontSize: 14),
            ),
          ],
        )
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.white.withOpacity(0),
        shape: Border(
            bottom: BorderSide(
                color: Color.fromARGB(255, 212, 211, 211), width: 1)),
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
          size: 28,
        ),
        title: Text(
          "Google Lớp học",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        actions: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage('assets/image/4.jpg'),
          ),
          Center(
            child: Theme(
              data: Theme.of(context).copyWith(
                cardColor: Colors.white,
              ),
              child: PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text("Làm mới "),
                  ),
                  PopupMenuItem(
                    child: Text("Gửi ý kiến phản hồi cho Google"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          boxstatus,
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(5.0),
              itemCount: Nametag.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: colorList[index]),
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // boxstatus,
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                RichText(
                                  text: TextSpan(
                                    children: <InlineSpan>[
                                      TextSpan(
                                        text: Nametag[index], // Your long text
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 30.0),
                                          child: Image.asset(
                                            imageList[index],
                                            width: 120,
                                            height: 80,
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(Name[index],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    )),
                              ],
                            ),
                          ),
                          IconButton(
                            padding: EdgeInsets.only(bottom: 60, left: 30),
                            color: Colors.white,
                            icon: Icon(Icons.more_vert),
                            onPressed: () {
                              print("Huỷ đăng ký");
                              var snackBar = new SnackBar(
                                content: Text(
                                  "Huỷ đăng ký",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                backgroundColor: Colors.white70,
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            },
                          )
                        ],
                      )),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: Colors.white,
        foregroundColor: Colors.blueAccent,
        shape: CircleBorder(),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
