import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import '../HomeScreen/home-scren.dart';
import 'package:url_launcher/url_launcher.dart';

class Fluttercards2 extends StatefulWidget {
  @override
  _Fluttercards2State createState() => _Fluttercards2State();
}

class _Fluttercards2State extends State<Fluttercards2> {
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
    "images/img7.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    CardController controller; //Use this to trigger swap.

    return Scaffold(
      backgroundColor: Color(0xff010f32),

      body: Stack(
        children: [SizedBox(
          height: 20,
        ),Center(child:RichText(
            text: TextSpan(
                style: TextStyle(fontSize: 45),
                children: <TextSpan>[
                  TextSpan(
                      text: 'MATCHED!',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold,)),
                ]))),
          SizedBox(
            height: 10,
          ),Container(
          height: MediaQuery.of(context).size.height * 0.9,

          child:TinderSwapCard(
            orientation: AmassOrientation.BOTTOM,
            totalNum: 1,
            stackNum: 4,
            swipeEdge: 4.0,
            maxWidth: MediaQuery.of(context).size.width * 0.9,
            maxHeight: MediaQuery.of(context).size.width * 1.5,
            minWidth: MediaQuery.of(context).size.width * 0.85,
            minHeight: MediaQuery.of(context).size.width * 1.4,
            cardBuilder: (context, index) => Card(
              child: Image.asset('${welcomeImages1[index]}'),
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

              }
            },
            swipeCompleteCallback:
                (CardSwipeOrientation orientaion , int index){
            },
          ),
        ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Center( child: Container(
            child: TextButton(
              style: TextButton.styleFrom(
                  padding:
                  EdgeInsets.symmetric(horizontal: 129, vertical: 18),

                  backgroundColor: Color(0xff04E9CD),
                  primary: Colors.black),
              child: Text("DIRECTIONS"),
              onPressed: () async {
                const url =
                    "https://www.google.com/maps/dir//Panda+Express,+26230+Northwest+Fwy,+Cypress,+TX+77429/@30.0651506,-95.9184951,11z/data=!4m8!4m7!1m0!1m5!1m1!1s0x8640d5ba3faee8f3:0x290eff3ee7e7b7d1!2m2!1d-95.6986857!2d29.9741616";
                //this is not the best practice but the usual check for launching url's is throwing up an error
                await launch(url);
              },
            ),
          ),
          ),

        ],
      ),

      ]),
    );
  }
}