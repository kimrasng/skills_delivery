import 'package:flutter/material.dart';
import 'package:skills_delivery/screen/AppBar.dart';

class DeliveryMain extends StatelessWidget {
  const DeliveryMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "배달"),
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