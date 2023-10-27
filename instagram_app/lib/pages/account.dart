import 'package:flutter/material.dart';
import 'package:instagram_app/util/account_tap1.dart';
import 'package:instagram_app/util/account_tap2.dart';
import 'package:instagram_app/util/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          // backgroundColor: Colors.blue,
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'pepper_20_12',
                style: TextStyle(color: Colors.white),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Icon(
                      Icons.add_box_outlined,
                      color: Colors.white,
                      size: 28, // Điều chỉnh kích thước ở đây (36 là ví dụ)
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 28, // Điều chỉnh kích thước ở đây (24 là ví dụ)
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        body: Container(
          color: Colors.black, // Đổi màu nền thành màu đen
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/1.jpg'), // Đường dẫn đến hình ảnh của bạn
                          fit: BoxFit.cover, // Cách hình ảnh sẽ được hiển thị
                        ),
                      ),
                    ),

                    // number
                    const Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                '3',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                              ),
                              Text('Bài viết'),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '41',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                              ),
                              Text('Người theo...'),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '78',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                              ),
                              Text('Đang theo...'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 20,
                  left: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Nguyên Trường', style: TextStyle(fontSize: 14)),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 6,
                        right: 6), // Điều chỉnh giá trị của padding tại đây
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        color: Colors.white30,
                        child:
                            Center(child: Text('Chỉnh sửa trang cá nhân...')),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: 4), // Điều chỉnh giá trị của padding tại đây
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        color: Colors.white30,
                        child: Center(child: Text('Chia sẻ trang cá nhân')),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(
                        0), // Điều chỉnh giá trị của padding tại đây
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        color: Colors.white30,
                        child: Center(child: Icon(Icons.person_add_outlined)),
                      ),
                    ),
                  ),
                ],
              ),
              TabBar(
                // dividerColor: const Color.fromARGB(0, 255, 255, 255),
                indicatorColor: Colors.black,
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.grid_on_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.person_pin_outlined),
                  ),
                ],
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  AccountTap1(),
                  AccountTap2(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
