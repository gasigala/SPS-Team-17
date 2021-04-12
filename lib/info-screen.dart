import 'package:flutter/material.dart';
import './back-button.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010F32),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            style: TextStyle(fontSize: 45),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'About',
                                  style: TextStyle(
                                      color: Color(0xff04E9CD),
                                      fontWeight: FontWeight.bold)),
                            ])),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('FoodMates is an app developed as part of Google’s Software Product Sprint that enables foodies from anywhere in the United States to find a new favorite restaurant.',
                style: TextStyle(color: Colors.white, fontSize: 18),),
              ),
              Padding(padding: const EdgeInsets.all(8.0),
              child: Text('Dining Solo?',
                style: TextStyle(color: Color(0xff04E9CD), fontSize: 29, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,),
              ),
               Padding(padding: const EdgeInsets.all(8.0),
              child: Text(('Got a group of Foodies?'),
                style: TextStyle(color: Color(0xff04E9CD), fontSize: 29, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,),
              ),
               Padding(padding: const EdgeInsets.all(8.0),
              child: Text(('FoodMates allows you to create and join a lobby so you and your friends can find the perfect restaurant. If you’ve already received a game pin simply enter it along with your name and wait for the host to start the session. Otherwise, you can create a room and send the game pin to your friends. '),
                style: TextStyle(color: Colors.white, fontSize: 18),
                textAlign: TextAlign.left,),
              ), Padding(padding: const EdgeInsets.all(8.0),
              child: Text(('Are you a local buisness intrested in generating customers?'),
                style: TextStyle(color: Color(0xff04E9CD), fontSize: 29, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,),
              ),
               Padding(padding: const EdgeInsets.all(8.0),
              child: Text(('FoodMates is committed to supporting local businesses. If you would like to add your restaurant to our app it can be done here <link>'),
                style: TextStyle(color: Colors.white, fontSize: 18),
                textAlign: TextAlign.left,),
              ),
            ],
          ),
          BackButtonSPS(),
        ],
      ),
    );
  }
}
