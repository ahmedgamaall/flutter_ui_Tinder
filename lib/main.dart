import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:tinder_images/Utils/constans.dart';
import 'package:tinder_images/Widgets/appBarr.dart';
import 'package:tinder_images/Widgets/bottomBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      home: HomeBage(),
    );
  }
}

class HomeBage extends StatefulWidget {
  const HomeBage({Key? key}) : super(key: key);

  @override
  State<HomeBage> createState() => _HomeBageState();
}

class _HomeBageState extends State<HomeBage> {

  List<SwipeItem> _swipItems = <SwipeItem>[];
  MatchEngine? _matchEngine;
  List<String> names =[

    'SQUID GAME ',
   ' SQUID GAME ',
    'SQUID GAME ',
    'SQUID GAME ',
    'SQUID GAME ',
    'SQUID GAME ',
    'SQUID GAME ',
    'SQUID GAME ',
    'SQUID GAME ',
    'SQUID GAME ',
    'SQUID GAME ',
    'SQUID GAME ',
    'SQUID GAME ',
    'SQUID GAME ',
    'SQUID GAME ',
    'SQUID GAME ',
    'SQUID GAME ',
    'SQUID GAME ',
    'SQUID GAME ',
    'SQUID GAME ',
    'SQUID GAME ',
    'SQUID GAME ',
    'SQUID GAME ',
  ];
  
  @override
  void initState() {
   for(int i =0; i<names.length;i++ ){
     _swipItems.add(SwipeItem(content: Content(text: names[i]),
     likeAction: (){},
       nopeAction: (){},
     ));
   }
   _matchEngine = MatchEngine(swipeItems: _swipItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            TopBar(),
            Expanded(
              child: Container(
                 padding: EdgeInsets.all(10),
                  child: SwipeCards(matchEngine: _matchEngine!,
                  itemBuilder:( BuildContext context , int index,){
                    return Container(
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        image:DecorationImage (image: AssetImage(images[index]),
                        fit: BoxFit.cover
                        ),

                        borderRadius: BorderRadius.circular(15),
                      ),
                      // padding: EdgeInsets.all(50),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            names[index],
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                   onStackFinished: (){
                    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Squir Game')));
                   },
                  ),
              ),
            ),
            BotoomBar(),
          ],
        ),
      ),
    );
  }
}

class Content{
  final String? text;
  Content({this.text});

}

