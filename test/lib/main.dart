import 'package:flutter/material.dart';
import 'package:test/list_movies.dart';
import 'package:test/my_home_page.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Group 02",
      home: const MyListMovies(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
    );
  }
}
