// ignore_for_file: prefer_const_constructors
import 'dart:math';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Myclassroom extends StatelessWidget {
  Myclassroom({super.key});

  var mybox = Container();
  List<String> Nametag = [
    "QTDAPM Gr3-2023",
    "Java nâng cao Nhóm_ 1",
    "Nhập môn trí tuệ",
    "Phép tính vi phân",
    "Giáo dục môi trường",
    "Chủ nghĩa xã hội",
    "Cấu trúc dữ liệu",
    "Nguyên lý hệ điều hành",
    "Anh văn chuyên ngành",
  ];
  List<String> Name = [
    "Hân Nguyễn Mậu",
    "Hà Nguyễn Hoàng",
    "Phước Đoàn Thị Hồng",
    "[2021-2022.hk2] Phòng ĐTĐH&CTSV",
    "[2021-2022.hk2] Phòng ĐTĐH&CTSV",
    "[2021-2022.hk2] Phòng ĐTĐH&CTSV",
    "[2021-2022.hk2] Phòng ĐTĐH&CTSV",
    "[2021-2022.hk2] Phòng ĐTĐH&CTSV",
    "[2021-2022.hk2] Phòng ĐTĐH&CTSV",
  ];
  List<Color> colorList = [
    Color.fromARGB(255, 231, 41, 41),
    Color.fromARGB(255, 238, 218, 43),
    Color.fromARGB(255, 55, 235, 39),
    Color.fromARGB(255, 35, 113, 231),
    Color.fromARGB(255, 216, 35, 207),
    Color.fromARGB(255, 216, 35, 35),
    Color.fromARGB(255, 35, 113, 231),
    Color.fromARGB(255, 238, 218, 43),
    Color.fromARGB(255, 55, 235, 39),
  ];
  var imageList = [
    "assets/image/1.png",
    "assets/image/1.png",
    "assets/image/1.png",
    "assets/image/1.png",
    "assets/image/1.png",
    "assets/image/1.png",
    "assets/image/1.png",
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
        iconTheme: const IconThemeData(color: Colors.black54),
        title: Text(
          "Google Lớp học",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        actions: [
          ClipOval(
            child: CircleAvatar(
              radius: 20.0,
              backgroundColor:
                  Colors.transparent, // Set a background color if needed
              child: Image.asset(
                'assets/image/4.jpg',
                fit: BoxFit.cover,
              ),
            ),
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
                                        alignment: PlaceholderAlignment.top,
                                        // child: Padding(
                                        // padding: const EdgeInsets.only(
                                        //     right: 30.0),
                                        child: Opacity(
                                          opacity:
                                              0.6, // Điều chỉnh độ mờ của hình ảnh ở đây
                                          child: Image.asset(
                                            imageList[index],
                                            width: 80,
                                            height: 70,
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                      ),
                                      // ),
                                    ],
                                  ),
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
                                backgroundColor: Colors.white,
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 100,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black26, // Choose your desired border color
                      width: 1.0, // Adjust the border width as needed
                    ),
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 22, color: Colors.black),
                        children: const <TextSpan>[
                          TextSpan(
                            text: "G",
                            style: TextStyle(fontSize: 22, color: Colors.blue),
                          ),
                          TextSpan(
                            text: "o",
                            style: TextStyle(fontSize: 22, color: Colors.red),
                          ),
                          TextSpan(
                            text: "o",
                            style:
                                TextStyle(fontSize: 22, color: Colors.yellow),
                          ),
                          TextSpan(
                            text: "g",
                            style: TextStyle(fontSize: 22, color: Colors.blue),
                          ),
                          TextSpan(
                            text: "l",
                            style: TextStyle(fontSize: 22, color: Colors.green),
                          ),
                          TextSpan(
                            text: "e",
                            style: TextStyle(fontSize: 22, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      " Lớp học",
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black26, // Choose your desired border color
                    width: 1.0, // Adjust the border width as needed
                  ),
                ),
              ),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.home_outlined),
                    title: const Text('Lớp Học'),
                    selected: true,
                    onTap: () {
                      // Xử lý khi người dùng chọn Mục 1
                      // Đóng Drawer sau khi chọn
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.calendar_today),
                    title: const Text('Lịch'),
                    onTap: () {
                      // Xử lý khi người dùng chọn Mục 2
                      // Đóng Drawer sau khi chọn
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.notifications_none_outlined),
                    title: const Text('Thông báo'),
                    onTap: () {
                      // Xử lý khi người dùng chọn Mục 2
                      // Đóng Drawer sau khi chọn
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    height: 8.0,
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16, left: 16),
                    child: Text(
                      "Đã đăng ký",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  ListTile(
                    leading: const Icon(Icons.fact_check_outlined),
                    title: const Text('Việc cần làm'),
                    onTap: () {
                      // Xử lý khi người dùng chọn Mục 2
                      // Đóng Drawer sau khi chọn
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: ClipOval(
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/image/cam.jpg"),
                            fit: BoxFit.none,
                          ),
                        ),
                      ),
                    ),
                    title: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('QTDAPM Gr3-2023'),
                        // Text(
                        //   '2020 - 2023',
                        //   style: TextStyle(fontSize: 12, color: Colors.black54),
                        // ),
                      ],
                    ),
                    onTap: () {
                      // Xử lý khi người dùng chọn Mục 2
                      // Đóng Drawer sau khi chọn
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: ClipOval(
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/image/xanh1.png"),
                            fit: BoxFit.none,
                          ),
                        ),
                      ),
                    ),
                    title: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Java nâng cao_Nhóm 1'),
                        // Text(
                        //   '2020 - 2023',
                        //   style: TextStyle(fontSize: 12, color: Colors.black54),
                        // ),
                      ],
                    ),
                    onTap: () {
                      // Xử lý khi người dùng chọn Mục 2
                      // Đóng Drawer sau khi chọn
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: ClipOval(
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/image/xanh2.jpg"),
                            fit: BoxFit.none,
                          ),
                        ),
                      ),
                    ),
                    title: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('[2022-2023.1] Nhập môn Trí ...'),
                        Text(
                          '2022-2023.1.TIN3113.001',
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                      ],
                    ),
                    onTap: () {
                      // Xử lý khi người dùng chọn Mục 2
                      // Đóng Drawer sau khi chọn
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: ClipOval(
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/image/xanh3.jpg"),
                            fit: BoxFit.none,
                          ),
                        ),
                      ),
                    ),
                    title: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('[2022-2023.2] - Giáo dục mô ...'),
                        Text(
                          '2021-2022.2.MTR1022.002',
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                      ],
                    ),
                    onTap: () {
                      // Xử lý khi người dùng chọn Mục 2
                      // Đóng Drawer sau khi chọn
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: ClipOval(
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/image/xanh1.png"),
                            fit: BoxFit.none,
                          ),
                        ),
                      ),
                    ),
                    title: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('[2021-2022.2] - Phép tính vi p...'),
                        Text(
                          '2021-2022.2.TOA1034.001',
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                      ],
                    ),
                    onTap: () {
                      // Xử lý khi người dùng chọn Mục 2
                      // Đóng Drawer sau khi chọn
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: ClipOval(
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/image/xanh2.jpg"),
                            fit: BoxFit.none,
                          ),
                        ),
                      ),
                    ),
                    title: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('[2021-2022.2] - Chủ nghĩa xa ...'),
                        Text(
                          '2021-2022.2.LLCTXH2.001',
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                      ],
                    ),
                    onTap: () {
                      // Xử lý khi người dùng chọn Mục 2
                      // Đóng Drawer sau khi chọn
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: ClipOval(
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/image/cam.jpg"),
                            fit: BoxFit.none,
                          ),
                        ),
                      ),
                    ),
                    title: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('[2021-2022.2] - Cấu trúc dữ l ...'),
                        Text(
                          '2021-2022.2.TIN3084.001',
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                      ],
                    ),
                    onTap: () {
                      // Xử lý khi người dùng chọn Mục 2
                      // Đóng Drawer sau khi chọn
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: ClipOval(
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/image/xanh3.jpg"),
                            fit: BoxFit.none,
                          ),
                        ),
                      ),
                    ),
                    title: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('[2021-2022.2] - Nguyên lý hệ ...'),
                        Text(
                          '2021-2022.2.TIN3042.001',
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                      ],
                    ),
                    onTap: () {
                      // Xử lý khi người dùng chọn Mục 2
                      // Đóng Drawer sau khi chọn
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: ClipOval(
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/image/xanh3.jpg"),
                            fit: BoxFit.none,
                          ),
                        ),
                      ),
                    ),
                    title: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('[2021-2022.2] - Anh văn chu ...'),
                        Text(
                          '2021-2022.2.TIN2033.001',
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                      ],
                    ),
                    onTap: () {
                      // Xử lý khi người dùng chọn Mục 2
                      // Đóng Drawer sau khi chọn
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
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
