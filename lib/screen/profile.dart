import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("프로필")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildProfileItem(context),
            _buildSettingsItem(context),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileItem(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                child: SizedBox(
                  width: 140,
                  height: 140,
                  child: Image.network(
                    "https://i.namu.wiki/i/XJIgvkGTLB-5qUbu4GnWTsXsuLofCqi7-q33iZJaMyuCJYZD3oeMouxFGMMX_vs8Phr8s6knHJ2IfT4fiE9C0Q.webp",
                  ),
                ),
              ),
            ),
          ),
        ),
        Text("원시인", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildSettingsItem(BuildContext context) {

    final account = [
      ("프로필 수정"),
      ("로그아웃")
    ];

    final history = [
      ("최근 주문 기록"),
      ("최근 배달 기록")
    ];

    return Column(


      children: [
        Column(
          
        ),
        Column()
      ],
    );
  }


}