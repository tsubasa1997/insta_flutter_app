import 'package:flutter/material.dart';

import 'package:insta_flutter_app/screens/slide_image.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: TextButton(
          onPressed: () {},
          child: Text(
            'linstagram',
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_circle_outline)),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: Icon(Icons.mail_outline)),
        ],
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/IMG_2570.jpg',
                      width: 50,
                    ),
                    Text(
                      'usr name',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SlideImage()
              ],
            ),
          )
        ],
      ),
    );
  }
}


