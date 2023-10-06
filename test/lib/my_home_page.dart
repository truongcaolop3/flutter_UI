// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';

class Myhomepage extends StatelessWidget {
  const Myhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> popMenu = ["Search", "Add", "Setting"];
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.purple,
                Color.fromARGB(255, 230, 94, 169),
                Color.fromARGB(255, 51, 85, 236),
              ]),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        ),

        leading: Icon(
          Icons.home,
          color: Colors.white,
          size: 40,
        ),
        title: Text(
          "My project",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return popMenu.map((e) {
                return PopupMenuItem(child: Text(e));
              }).toList();
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Hello guy.",
              style: TextStyle(
                color: Colors.red,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              )),
          Text("hehehe", style: TextStyle(fontFamily: 'Roboto', fontSize: 30)),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 51, 85, 236),
                  Color.fromARGB(255, 230, 94, 169),
                  Colors.purple
                ]),
                borderRadius: BorderRadius.circular(50)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 26,
                  ),
                  onPressed: () {
                    print("hello you will die");
                    var snackBar = new SnackBar(
                        content: Text("Hello: You will dead in 5s"));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
                Icon(
                  Icons.share,
                  color: Colors.white,
                ),
                Icon(
                  Icons.car_crash,
                  color: Colors.white,
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Chat", icon: Icon(Icons.chat)),
          BottomNavigationBarItem(label: "Call", icon: Icon(Icons.call)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: CircleBorder(),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: ListView(
        scrollDirection: Axis.vertical,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.red),
            child: Text("Hello"),
          ),
          ListTile(
            onTap: () => {
              Navigator.pop(context),
            },
            title: Text(
              "Item 1",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
              ),
            ),
          )
        ],
      ),
    );
  }
}
