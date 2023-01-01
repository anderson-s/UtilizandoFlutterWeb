import 'package:flutter/material.dart';

class AppBarMobile extends StatelessWidget {
  const AppBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        "logo.png",
        fit: BoxFit.contain,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(4),
          child: IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 2, top: 4, bottom: 4),
          child:
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ),
      ],
    );
  }
}
