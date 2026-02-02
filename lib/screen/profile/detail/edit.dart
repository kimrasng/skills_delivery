import 'package:flutter/material.dart';
import 'package:skills_delivery/screen/AppBar.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "프로필 수정"),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("프로필 수정")
          ],
        ),
      ),
    );
  }
}
