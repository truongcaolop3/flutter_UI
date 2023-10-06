import 'package:flutter/material.dart';

class MyListMovies extends StatelessWidget {
  const MyListMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 450,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  promocard('assets/images/1.jpg'),
                  promocard('assets/images/2.jpg'),
                  promocard('assets/images/3.jpg'),
                  promocard('assets/images/4.jpg')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget promocard(Image) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        margin: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 80,
        ),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(20),
          image:
              DecorationImage(fit: BoxFit.scaleDown, image: AssetImage(Image)),
        ),
      ),
    );
  }
}
