import 'package:flutter/material.dart';

class DeliveryMain extends StatelessWidget {
  const DeliveryMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('배달', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: false,
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