import 'package:flutter/material.dart';
import 'package:tinder_images/Widgets/bottomBar.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          imageWidget('assets/image0.jpg'),
          // buttonWidget(Icons.star, Colors.yellowAccent),
          // buttonWidget(Icons.notifications, Colors.grey),
          // buttonWidget(Icons.home_outlined, Colors.grey),

        ],
      ),
    );
  }
}

Widget imageWidget(String image) {
  return Container(
    height: 70,
    width: 70,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    ),
  );
}
