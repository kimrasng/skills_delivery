import 'package:flutter/material.dart';
import 'package:skills_delivery/screen/AppBar.dart';
import './orderHistory.dart';

class OrderMain extends StatelessWidget {
  const OrderMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "주문"),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildOrderButton(context),
            _buildRecentOrdersCard(context),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderButton(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 20,
      height: 70,
      child: Card(
        color: const Color(0xFFE9E9E9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                "주문 하기",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(Icons.arrow_forward, size: 32.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildRecentOrdersCard(BuildContext context) {
    final orders = [
      ("Cu", "얼박사, 신라면, 카스, 삼각김밥", "https://play-lh.googleusercontent.com/dipiXa5mekfIkjxfIGz00vdupS7Mh_9m3LnwP393wBSNmwWQYW-1junU4LT--ZoEtgtM=w240-h480-rw"),
      ("Subway", "에그마요, 바비큐", "https://www.pngall.com/wp-content/uploads/13/Subway-Logo-PNG-Image.png"),
      ("Subway", "에그마요, 참치, 바비큐, 치킨 슬라이스", "https://www.pngall.com/wp-content/uploads/13/Subway-Logo-PNG-Image.png"),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 16.0, bottom: 8.0),
          child: Text("최근 주문", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 20,
          height: 300,
          child: Card(
            color: const Color(0xFFE9E9E9),
            child: Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.all(10),
                    itemCount: orders.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 10),
                    itemBuilder: (_, index) => _buildOrderItem(context, orders[index]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  
                  child: Text(
                    "더보기",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildOrderItem(BuildContext context, (String, String, String) order) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.network(
            order.$3,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderHistory()));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(order.$1, style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold, fontSize: 20)),
                Text(order.$2, style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 10)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
