import 'package:flutter/material.dart';
import 'package:skills_delivery/screen/AppBar.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "주문 기록"),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("주문 기록")
          ],
        ),
      ),
    );
  }
}
