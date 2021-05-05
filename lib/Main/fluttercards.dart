import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import '../Main/flutterFinal.dart';


class Fluttercards extends StatefulWidget {
  @override
  _FluttercardsState createState() => _FluttercardsState();
}

class _FluttercardsState extends State<Fluttercards> {
  int i = 0;
  List<String> welcomeImages =[
    "images/img1.jpg",
    "images/img2.jpg",
    "images/img3.jpg",
    "images/img4.jpg",
    "images/img5.jpg",
    "images/img6.jpg",
  ];
  List<String> welcomeImages1 =[
    "images/img2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    CardController controller; //Use this to trigger swap.

    return Scaffold(
      backgroundColor: Color(0xff010f32),

      body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.9,

          child:TinderSwapCard(
            orientation: AmassOrientation.BOTTOM,
            totalNum: 6,
            stackNum: 4,
            swipeEdge: 4.0,
            maxWidth: MediaQuery.of(context).size.width * 0.9,
            maxHeight: MediaQuery.of(context).size.width * 1.5,
            minWidth: MediaQuery.of(context).size.width * 0.85,
            minHeight: MediaQuery.of(context).size.width * 1.4,
            cardBuilder: (context, index) => Card(
              child: Image.asset('${welcomeImages[index]}'),
            ) ,
            cardController: controller = CardController(),
            swipeUpdateCallback:
                (DragUpdateDetails details, Alignment align){
              if(align.x < 0){
                print("hello");
                i++;
              }else if (align.x > 0){
                print("jack");
              }
              //When swipe left goes home
              if (i==3)
                {
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Fluttercards2()));
                  }
                }
            },
            swipeCompleteCallback:
                (CardSwipeOrientation orientaion , int index){
            },
          ),
      ),

    ],
    ),
    );
  }
}