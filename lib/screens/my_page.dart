import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: TextButton(
          onPressed: () {},
          child: Text(
            'user name',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

