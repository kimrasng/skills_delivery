import 'package:flutter/material.dart';
import 'package:skills_delivery/screen/AppBar.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "로그아웃"),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("로그아웃")
          ],
        ),
      ),
    );
  }
}
