import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class Fluttercards extends StatefulWidget {
  @override
  _FluttercardsState createState() => _FluttercardsState();
}

class _FluttercardsState extends State<Fluttercards> {
  List<String> welcomeImages =[
    "images/img1.jpg",
    "images/img2.jpg",
    "images/img3.jpg",
    "images/img4.jpg",
    "images/img5.jpg",
    "images/img6.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    CardController controller; //Use this to trigger swap.

    return Scaffold(
      backgroundColor: Color(0xff010f32),

      body: Stack(
      children: [Container(
          height: MediaQuery.of(context).size.height * 0.7,

          child:TinderSwapCard(
            orientation: AmassOrientation.BOTTOM,
            totalNum: 6,
            stackNum: 4,
            swipeEdge: 4.0,
            maxWidth: MediaQuery.of(context).size.width * 0.9,
            maxHeight: MediaQuery.of(context).size.width * 0.9,
            minWidth: MediaQuery.of(context).size.width * 0.8,
            minHeight: MediaQuery.of(context).size.width * 0.8,
            cardBuilder: (context, index) => Card(
              child: Image.asset('${welcomeImages[index]}'),
            ) ,
            cardController: controller = CardController(),
            swipeUpdateCallback:
                (DragUpdateDetails details, Alignment align){
              if(align.x < 0){
                print("hello");
              }else if (align.x > 0){
                print("jack");
              }

            },
            swipeCompleteCallback:
                (CardSwipeOrientation orientaion , int index){
            },
          ),
      ),
    Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 520,
          ),
          Container(
      child: Center(
      child: Text(
        "Asian Chao",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 45,
          fontWeight: FontWeight.bold,
        ),
      ),
      ),),
    ],
    ),
    ),
    ],
    ),
    );
  }
}