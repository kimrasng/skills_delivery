import 'package:flutter/material.dart';

import 'detail/edit.dart';
import 'detail/orderHistory.dart';
import 'detail/deliveryHistory.dart';
import 'detail/logout.dart';

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
        Text("Test", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildSettingsItem(BuildContext context) {

    final account = [
      (Icons.edit,"프로필 수정", ProfileEdit()),
      (Icons.logout,"로그아웃", Logout())
    ];

    final history = [
      (Icons.food_bank,"최근 주문 기록", OrderHistory()),
      (Icons.moped,"최근 배달 기록", DeliveryHistory())
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 24.0, bottom: 8.0),
          child: Text("계정", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold)),
        ),
        Column(
          children: account.map((item) {
            return ListTile(
              leading: Icon(item.$1),
              title: Text(item.$2),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => item.$3));
              },
            );
          }).toList(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 24.0, bottom: 8.0),
          child: Text("기록", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold)),
        ),
        Column(
          children: history.map((item) {
            return ListTile(
              leading: Icon(item.$1),
              title: Text(item.$2),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => item.$3));
              },            
            );
          }).toList(),
        )
      ],
    );
  }


}