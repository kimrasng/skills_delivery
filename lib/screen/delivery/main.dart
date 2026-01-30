import 'package:flutter/material.dart';

class DeliveryMain extends StatelessWidget {
  const DeliveryMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('배달', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(
              child: Image.network("https://i.namu.wiki/i/XJIgvkGTLB-5qUbu4GnWTsXsuLofCqi7-q33iZJaMyuCJYZD3oeMouxFGMMX_vs8Phr8s6knHJ2IfT4fiE9C0Q.webp"),
            ),
          )
        ],
      ),
      body:Container(
        margin: const EdgeInsets.all(8.0),
        child: SizedBox.expand(
          child: Center(child: Text(
            'Delivery page', style: Theme.of(context).textTheme.titleLarge
            )
          ),
        ),
      )
    );
  }
}