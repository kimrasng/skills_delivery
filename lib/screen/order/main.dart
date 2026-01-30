import 'package:flutter/material.dart';

class OrderMain extends StatelessWidget {
  const OrderMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Text('주문', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(
              child: SizedBox(
                width: 46,
                height: 46,
                child: Image.network("https://i.namu.wiki/i/XJIgvkGTLB-5qUbu4GnWTsXsuLofCqi7-q33iZJaMyuCJYZD3oeMouxFGMMX_vs8Phr8s6knHJ2IfT4fiE9C0Q.webp"),
              ),
            ),
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 20,
                height: 70,
                child: Card(
                  color: const Color(0xFFE9E9E9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text(
                      "주문 하기",
                      style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(width: 220),
                    Icon(Icons.arrow_forward, size: 32.0)
                    ],
                  ),
                ),
              ),
              Text("최근 주문", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold)),
              SizedBox(
                width: MediaQuery.of(context).size.width - 20,
                height: 300,
                child: Card(
                  color: const Color(0xFFE9E9E9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                            height: 40,
                            width: 40,
                            child: Image.network("https://blog.kakaocdn.net/dna/tyZ4s/btqVzRA237b/AAAAAAAAAAAAAAAAAAAAAFn2os4BtUUb68-tpecCWKDgwyVyjOfl8bWDwr3emtfm/img.jpg?credential=yqXZFxpELC7KVnFOS48ylbz2pIh7yKj8&expires=1769871599&allow_ip=&allow_referer=&signature=fr6HlkLHrsxqIJiH%2FapAgaBLUdA%3D"),
                            ),
                          )
                        ]
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}