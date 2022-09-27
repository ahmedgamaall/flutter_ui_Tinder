import 'package:flutter/material.dart';

class BotoomBar extends StatefulWidget {
  const BotoomBar({Key? key}) : super(key: key);

  @override
  State<BotoomBar> createState() => _BotoomBarState();
}

class _BotoomBarState extends State<BotoomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // buttonWidget(Icons.refresh, Colors.yellowAccent),
          buttonWidget(Icons.close, Colors.red),
          buttonWidget(Icons.star, Colors.yellow),
          buttonWidget(Icons.favorite, Colors.red),
          buttonWidget(Icons.bolt, Colors.teal),
        ],
      ),
    );
  }
}
Widget buttonWidget(IconData icon, Color color) {
  return Container(
    height: 60,
    width: 60,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      border: Border.all(color: color),
    ),
    child: Icon(
      icon,
      color: color,
      size: 30,
    ),
  );
}
