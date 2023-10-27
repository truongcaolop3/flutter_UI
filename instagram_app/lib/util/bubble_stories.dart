import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final List people = ['a', 'b', 'c', 'd', 'd', 'e', 'f', 'g'];
  final List image = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 8, right: 8),
      scrollDirection: Axis.horizontal,
      itemCount: people.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(8.0), // Điều chỉnh khoảng cách ở đây
          child: Column(
            children: [
              Container(
                width: 74,
                height: 74,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(image[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 4),
              Text(people[index]),
            ],
          ),
        );
      },
    );
  }
}
