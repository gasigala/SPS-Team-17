import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import './back-button.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010F32),
      body: Stack(
        children: [
          ListView(
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
                    child: Text(
                      'FoodMates is an app developed as part of Google’s Software Product Sprint that enables foodies from anywhere in the United States to find a new favorite restaurant.',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Dining Solo?',
                      style: TextStyle(
                          color: Color(0xff04E9CD),
                          fontSize: 29,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'FoodMates can help you find the perfect bases on your custom needs. FoodMates will present a list of venues in your surrounding area and give you the best match for you. Just adjust your preferences and start swiping!',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      ('Got a group of Foodies?'),
                      style: TextStyle(
                          color: Color(0xff04E9CD),
                          fontSize: 29,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      ('FoodMates allows you to create and join a lobby so you and your friends can find the perfect restaurant. If you’ve already received a game pin simply enter it along with your name and wait for the host to start the session. Otherwise, you can create a room and send the game pin to your friends. '),
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      ('Are you a local buisness intrested in generating customers?'),
                      style: TextStyle(
                          color: Color(0xff04E9CD),
                          fontSize: 29,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            text:
                                'FoodMates is committed to supporting local businesses. If you would like to add your restaurant to our app it can be done '),
                        TextSpan(
                            text: 'Here',
                            style: TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                const url =
                                    "https://googlespsteam17.netlify.app";
                                //this is not the best practice but the usual check for launching url's is throwing up an error
                                await launch(url);
                              })
                      ]),
                    ),
                  ),
                ],
              ),
            ],
          ),
          BackButtonSPS(),
        ],
      ),
    );
  }
}
