import 'package:flutter/material.dart';

class HomeScreenBot extends StatelessWidget {
  const HomeScreenBot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.asset("assets/images/bot.png"),
          Image.asset("assets/images/shadow.png"),
        ],
      ),
    );
  }
}
