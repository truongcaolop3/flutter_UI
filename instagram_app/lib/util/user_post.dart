import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String name;
  UserPost({required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
            left: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/1.jpg'), // Thay 'your_image.png' bằng đường dẫn đến tệp hình ảnh của bạn
                        fit: BoxFit.cover, // Cách hình ảnh sẽ được hiển thị
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.all(10.0), // Điều chỉnh khoảng cách ở đây
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
        Stack(
          children: [
            Container(
              height: 410,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/4.jpg'), // Thay 'your_image.png' bằng đường dẫn đến tệp hình ảnh của bạn
                  fit: BoxFit.cover, // Cách hình ảnh sẽ được hiển thị
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 10, left: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border_outlined),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Container(
                    width: 25, // Độ rộng bạn muốn
                    height: 25, // Chiều cao bạn muốn
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/air5.png'), // Đường dẫn đến ảnh của bạn
                        fit: BoxFit.cover, // Cách hình ảnh sẽ được hiển thị
                      ),
                    ),
                  ),
                ],
              ),
              Icon(Icons.bookmark_border_sharp)
            ],
          ),
        ),
        // comment
        Padding(
          padding: const EdgeInsets.only(
            bottom: 0,
            left: 16,
          ),
          child: Row(
            children: [
              Text('1.601 lượt thích'),
              // Text('zaheun_ Đăng lun cho nóng')
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 0,
            left: 16,
          ),
          child: Row(
            children: [Text('zaheun_ Đăng lun cho nóng')],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 0,
            left: 16,
          ),
          child: Row(
            children: [
              Text(
                'Xem tất cả 1.150 bình luận',
                style: TextStyle(color: Colors.white60),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 0,
            left: 16,
          ),
          child: Row(
            children: [
              Text(
                '11 tháng 8 •',
                style: TextStyle(color: Colors.white60),
              ),
              Text(
                'Xem bản dịch',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
