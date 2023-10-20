import 'package:flutter/material.dart';

class Cinemar extends StatelessWidget {
  const Cinemar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.white.withOpacity(0.5),
        // shape: Border(
        //     bottom: BorderSide(
        //         color: Color.fromARGB(255, 212, 211, 211), width: 1)),
        backgroundColor: Colors.black45,
        iconTheme: const IconThemeData(color: Colors.black54),
        title: Text(
          "Cinemar",
          style: TextStyle(color: Colors.white60, fontSize: 20),
        ),
        actions: [
          Transform.translate(
            offset:
                Offset(-34.0, 0.0), // Dịch chuyển hình ảnh sang bên trái 30px
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  10), // Điều này sẽ cắt thành hình vuông với các góc bo tròn (có thể thay đổi số để thay đổi độ bo tròn)
              child: Image.asset(
                'assets/images/3.jpg',
                width: 38, // Đặt chiều rộng mong muốn
                height: 38, // Đặt chiều cao mong muốn
                fit: BoxFit
                    .contain, // Đảm bảo hình ảnh không bị cắt mất một phần
              ),
            ),
          ),
        ],
      ),
      //
      body: SafeArea(
        child: Container(
          color: Colors.black87,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 10.0,
                              top: 10,
                            ),
                            padding: EdgeInsets.only(
                              top: 6,
                              bottom: 6,
                              left: 8,
                              right: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.white54,
                                width: 2.0,
                              ),
                            ),
                            child: Text(
                              'PhimT.hình',
                              style: TextStyle(
                                  fontSize: 14, color: Colors.white70),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 10.0,
                              top: 10,
                            ),
                            padding: EdgeInsets.only(
                              top: 6,
                              bottom: 6,
                              left: 8,
                              right: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.white54,
                                width: 2.0,
                              ),
                            ),
                            child: Text(
                              'Phim',
                              style: TextStyle(
                                  fontSize: 14, color: Colors.white70),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 10.0,
                              top: 10,
                            ),
                            padding: EdgeInsets.only(
                              top: 6,
                              bottom: 6,
                              left: 8,
                              right: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.white54,
                                width: 2.0,
                              ),
                            ),
                            child: Text(
                              'Thể loại',
                              style: TextStyle(
                                  fontSize: 14, color: Colors.white70),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 10.0,
                              top: 16,
                            ),
                            child: Text(
                              'Hiện đang thịnh hành',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          height: 170,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              promocard('assets/images/one-piece.jpg'),
                              promocard(
                                  'assets/images/vung-trom-khong-the-giau.jpeg'),
                              promocard('assets/images/truong-tuong-tu.png'),
                              promocard(
                                  'assets/images/khi-anh-chay-ve-phia-em.png'),
                              promocard('assets/images/summer.jpg'),
                              promocard('assets/images/school-2017.jpg'),
                              promocard('assets/images/school-2015.jpg'),
                              promocard(
                                  'assets/images/khach-san-vuong-gia.jpg'),
                              promocard('assets/images/do-bong-soon.jpg'),
                              promocard(
                                  'assets/images/lay-danh-nghia-nguoi-nha.jpg'),
                              promocard('assets/images/khach-san-bi-an.jpg'),
                              promocard(
                                  'assets/images/truong-nguyet-tan-minh.jpg'),
                              promocard(
                                  'assets/images/tinh-yeu-bat-kha-khang.jpg'),
                              promocard('assets/images/truong-tuong-tu.png'),
                              promocard('assets/images/one-piece.jpg'),
                              promocard(
                                  'assets/images/vung-trom-khong-the-giau.jpeg'),
                              promocard('assets/images/truong-tuong-tu.png'),
                              promocard(
                                  'assets/images/khi-anh-chay-ve-phia-em.png'),
                              promocard('assets/images/school-2017.jpg'),
                              promocard('assets/images/school-2015.jpg'),
                              promocard(
                                  'assets/images/khach-san-vuong-gia.jpg'),
                              promocard(
                                  'assets/images/lay-danh-nghia-nguoi-nha.jpg'),
                              promocard('assets/images/khach-san-bi-an.jpg'),
                              promocard(
                                  'assets/images/truong-nguyet-tan-minh.jpg'),
                              promocard(
                                  'assets/images/tinh-yeu-bat-kha-khang.jpg'),
                              promocard('assets/images/truong-tuong-tu.png'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 10.0,
                              top: 24,
                            ),
                            child: Text(
                              'Tìm kiếm nhiều nhất',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          height: 170,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              promocard(
                                  'assets/images/khi-anh-chay-ve-phia-em.png'),
                              promocard('assets/images/school-2017.jpg'),
                              promocard('assets/images/school-2015.jpg'),
                              promocard(
                                  'assets/images/khach-san-vuong-gia.jpg'),
                              promocard('assets/images/one-piece.jpg'),
                              promocard('assets/images/summer.jpg'),
                              promocard('assets/images/do-bong-soon.jpg'),
                              promocard(
                                  'assets/images/vung-trom-khong-the-giau.jpeg'),
                              promocard('assets/images/truong-tuong-tu.png'),
                              promocard(
                                  'assets/images/truong-nguyet-tan-minh.jpg'),
                              promocard(
                                  'assets/images/tinh-yeu-bat-kha-khang.jpg'),
                              promocard(
                                  'assets/images/lay-danh-nghia-nguoi-nha.jpg'),
                              promocard('assets/images/khach-san-bi-an.jpg'),
                              promocard('assets/images/truong-tuong-tu.png'),
                              promocard('assets/images/one-piece.jpg'),
                              promocard(
                                  'assets/images/vung-trom-khong-the-giau.jpeg'),
                              promocard('assets/images/truong-tuong-tu.png'),
                              promocard(
                                  'assets/images/khi-anh-chay-ve-phia-em.png'),
                              promocard('assets/images/school-2017.jpg'),
                              promocard('assets/images/school-2015.jpg'),
                              promocard(
                                  'assets/images/khach-san-vuong-gia.jpg'),
                              promocard(
                                  'assets/images/lay-danh-nghia-nguoi-nha.jpg'),
                              promocard('assets/images/khach-san-bi-an.jpg'),
                              promocard(
                                  'assets/images/truong-nguyet-tan-minh.jpg'),
                              promocard(
                                  'assets/images/tinh-yeu-bat-kha-khang.jpg'),
                              promocard('assets/images/truong-tuong-tu.png'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 10.0,
                              top: 24,
                            ),
                            child: Text(
                              'Chương trình truyền hình dành cho trẻ em',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          height: 170,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              promocard('assets/images/sonic.jpg'),
                              promocard('assets/images/sieu-nhan-gao.png'),
                              promocard('assets/images/sieu-nhan1.jpg'),
                              promocard('assets/images/au-trung.jpg'),
                              promocard('assets/images/oggy.jpg'),
                              promocard('assets/images/the-boss.jpg'),
                              promocard('assets/images/gia-dinh-au-trung.jpg'),
                              promocard('assets/images/rong1.jpg'),
                              promocard('assets/images/sonic.jpg'),
                              promocard('assets/images/sieu-nhan-gao.png'),
                              promocard('assets/images/sieu-nhan1.jpg'),
                              promocard('assets/images/au-trung.jpg'),
                              promocard('assets/images/oggy.jpg'),
                              promocard('assets/images/the-boss.jpg'),
                              promocard('assets/images/gia-dinh-au-trung.jpg'),
                              promocard('assets/images/rong1.jpg'),
                              promocard('assets/images/sonic.jpg'),
                              promocard('assets/images/sieu-nhan-gao.png'),
                              promocard('assets/images/sieu-nhan1.jpg'),
                              promocard('assets/images/au-trung.jpg'),
                              promocard('assets/images/oggy.jpg'),
                              promocard('assets/images/the-boss.jpg'),
                              promocard('assets/images/gia-dinh-au-trung.jpg'),
                              promocard('assets/images/rong1.jpg'),
                              promocard('assets/images/sonic.jpg'),
                              promocard('assets/images/sieu-nhan-gao.png'),
                              promocard('assets/images/sieu-nhan1.jpg'),
                              promocard('assets/images/au-trung.jpg'),
                              promocard('assets/images/oggy.jpg'),
                              promocard('assets/images/the-boss.jpg'),
                              promocard('assets/images/gia-dinh-au-trung.jpg'),
                              promocard('assets/images/rong1.jpg'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 10.0,
                              top: 24,
                            ),
                            child: Text(
                              'Phim hành động & kinh dị',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          height: 170,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              promocard('assets/images/xac-song.jpg'),
                              promocard('assets/images/xac-song2.jpg'),
                              promocard('assets/images/train1.jpg'),
                              promocard('assets/images/train2.jpg'),
                              promocard('assets/images/sat-thu-vo-danh.jpg'),
                              promocard('assets/images/cong-su1.jpg'),
                              promocard('assets/images/phap-luat1.jpg'),
                              promocard('assets/images/san-duoi.jpg'),
                              promocard('assets/images/aura.jpg'),
                              promocard('assets/images/dia-nguc1.jpg'),
                              promocard('assets/images/toi-pham.jpg'),
                              promocard('assets/images/xac-song.jpg'),
                              promocard('assets/images/xac-song2.jpg'),
                              promocard('assets/images/train1.jpg'),
                              promocard('assets/images/train2.jpg'),
                              promocard('assets/images/sat-thu-vo-danh.jpg'),
                              promocard('assets/images/cong-su1.jpg'),
                              promocard('assets/images/phap-luat1.jpg'),
                              promocard('assets/images/san-duoi.jpg'),
                              promocard('assets/images/aura.jpg'),
                              promocard('assets/images/dia-nguc1.jpg'),
                              promocard('assets/images/toi-pham.jpg'),
                              promocard('assets/images/cong-su1.jpg'),
                              promocard('assets/images/phap-luat1.jpg'),
                              promocard('assets/images/san-duoi.jpg'),
                              promocard('assets/images/aura.jpg'),
                              promocard('assets/images/dia-nguc1.jpg'),
                              promocard('assets/images/toi-pham.jpg'),
                              promocard('assets/images/xac-song.jpg'),
                              promocard('assets/images/xac-song2.jpg'),
                              promocard('assets/images/train1.jpg'),
                              promocard('assets/images/train2.jpg'),
                              promocard('assets/images/sat-thu-vo-danh.jpg'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // Thêm thêm các mục khác theo cách tương tự
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white38,
        items: [
          BottomNavigationBarItem(
            label: "Trang chủ",
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            label: "Mới & Hot",
            icon: Icon(Icons.video_library_outlined),
          ),
          BottomNavigationBarItem(
            label: "Netflix của tôi",
            icon: Container(
              width: 30, // Đặt chiều rộng mong muốn cho hình ảnh
              height: 30, // Đặt chiều cao mong muốn cho hình ảnh
              margin: EdgeInsets.only(bottom: 4), // Đặt khoảng cách dưới cùng
              child: Image.asset("assets/images/3.jpg"),
            ),
          )
        ],
        // Đặt kiểu chữ tùy chỉnh cho nhãn
        selectedLabelStyle: TextStyle(fontSize: 12),
        iconSize: 30,
        selectedIconTheme: IconThemeData(color: Colors.black54),
      ),
    );
  }

  Widget promocard(Image) {
    return AspectRatio(
      aspectRatio: 3.3 / 4,
      child: Container(
        margin: EdgeInsets.only(
          left: 10,
          right: 2,
          top: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(Image)),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.1), // Màu ở cuối gradient
              ],
            ),
          ),
        ),
      ),
    );
  }
}
