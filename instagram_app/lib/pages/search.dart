import 'package:flutter/material.dart';
import 'package:instagram_app/util/explor_grid.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.grey[800],
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[500],
                ),
                Container(
                  color: Colors.grey[800],
                  child: Text(
                    "Tìm kiếm",
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ExploreGrid(),
    );
  }
}
