import 'package:flutter/material.dart';

class OrderMain extends StatelessWidget {
  const OrderMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('주문', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: false,
      ),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 20,
                height: 60,
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text(
                      "주문 하기",
                      style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 220),
                    Icon(Icons.arrow_forward, size: 32.0)
                    ],
                  ),
                ),
              ),
              Text("최근 주문", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}