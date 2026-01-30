import 'package:flutter/material.dart';
import 'package:skills_delivery/screen/profile.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onProfileTap;

  const CustomAppBar({
    super.key,
    required this.title,
    this.onProfileTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onProfileTap ?? () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()));
                },
                child: SizedBox(
                  width: 46,
                  height: 46,
                  child: Image.network(
                    "https://i.namu.wiki/i/XJIgvkGTLB-5qUbu4GnWTsXsuLofCqi7-q33iZJaMyuCJYZD3oeMouxFGMMX_vs8Phr8s6knHJ2IfT4fiE9C0Q.webp",
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}