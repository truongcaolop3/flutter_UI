import 'package:flutter/material.dart';
import 'package:instagram_app/util/bubble_stories.dart';
import 'package:instagram_app/util/user_post.dart';

class UsserHome extends StatelessWidget {
  final List people = [
    'Pepper_2012',
    'lth01_',
    'eunlaxy',
    'doluongtri',
    'latin_0710',
    'nglbtr_',
    'miakim0222',
    'bea.hkn'
  ];
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        // backgroundColor: Colors.blue,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.white),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(14.0),
                  child:
                      Icon(Icons.favorite_border_outlined, color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(Icons.message_outlined, color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              // stories
              SizedBox(
                height: 130,
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 10),
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                        right: 8,
                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color.fromARGB(255, 200, 54, 54),
                                width: 3,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(image[index]),
                                radius: 36,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          //name
                          Text(
                            people[index],
                            style: const TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              //post
              ListView.builder(
                shrinkWrap: true, // Đặt shrinkWrap thành true để tránh lỗi
                physics: NeverScrollableScrollPhysics(), // Tắt tính năng cuộn
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPost(
                    name: people[index],
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
