import 'package:flutter/material.dart';
import 'package:instagram_app/pages/account.dart';
import 'package:instagram_app/pages/add.dart';
import 'package:instagram_app/pages/home.dart';
import 'package:instagram_app/pages/search.dart';
import 'package:instagram_app/pages/stories.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    UsserHome(),
    UserSearch(),
    UserAdd(),
    UserStory(),
    UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white70,
        selectedItemColor: Colors.white,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library_outlined), label: ''),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Đặt hình dạng thành hình tròn
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/1.jpg'),
                radius: 20,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
