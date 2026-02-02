import 'package:flutter/material.dart';
import 'package:skills_delivery/screen/AppBar.dart';

class DeliveryHistory extends StatelessWidget {
  const DeliveryHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "배달 기록"),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("배달 기록")
          ],
        ),
      ),
    );
  }
}
