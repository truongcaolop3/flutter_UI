import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(top: 4),
      itemCount: 20,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(1),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/$index.jpg'), // Thay đổi tên tệp hình ảnh tương ứng
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
