import 'package:flutter/material.dart';
import 'package:insta_flutter_app/my_page.dart';
import 'package:insta_flutter_app/slide_image.dart';

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
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).primaryColor,
        notchMargin: 6,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.home)),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(
                onPressed: () {
                },
                icon: Icon(Icons.person),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
