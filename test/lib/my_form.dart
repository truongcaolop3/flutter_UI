import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyFrom extends StatefulWidget {
  const MyFrom({super.key});

  @override
  State<MyFrom> createState() => _MyFromState();
}

class _MyFromState extends State<MyFrom> {
  var sothunhat = TextEditingController();
  var sothuhai = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            "Toan hoc co ban",
            style: TextStyle(fontSize: 26, color: Colors.lightBlueAccent[400]),
            textAlign: TextAlign.center,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10),
            child: TextFormField(
              controller: sothunhat,
              decoration: InputDecoration(
                  hintText: "so thu nhat",
                  hintStyle: TextStyle(color: Colors.purpleAccent)),
              keyboardType: TextInputType.number,
              // inputFormatters: [
              //   FilteringTextInputFormatter.allow(RegExp(r"0-9")),
              // ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10),
            child: TextFormField(
              controller: sothuhai,
              decoration: InputDecoration(
                  hintText: "so thu hai",
                  hintStyle: TextStyle(color: Colors.purpleAccent)),
              keyboardType: TextInputType.number,
            ),
          ),
          ElevatedButton(
            // style: ButtonStyle(
            //   backgroundColor: Color(Colors.pinkAccent)
            //   ),
            // ),
            onPressed: () {
              var tong = sothunhat.text + sothuhai.text;
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("tong hai so la ${tong}"),
                ),
              );
            },
            child: Text("Cong"),
          ),
        ],
      ),
    );
  }
}
