import 'package:flutter/material.dart';
import 'package:sps_team17/fluttercards.dart';

import './screen-slider.dart';
import './price-buttonbar.dart';
import './dropdown-category.dart';

class CreateSoloSession extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff010F32) ,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Solo Run',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                  //this will be the enter your name part of the form

                  const Divider(
                    height: 20,
                    color: Colors.white,
                    thickness: 2,
                  ),
                  //this is the slider part of the solo run screen
                  ScreenSlider(),
                  const Divider(
                    height: 20,
                    color: Colors.white,
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Select Price Range",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  PriceButtonBar(),
                  const Divider(
                    height: 20,
                    color: Colors.white,
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Select Category',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  DropDownCategory(),
                  const Divider(
                    height: 20,
                    color: Colors.white,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: TextButton(
                      style: TextButton.styleFrom(
                          padding:
                          EdgeInsets.symmetric(horizontal: 159, vertical: 18),

                          backgroundColor: Color(0xff04E9CD),
                          primary: Colors.black),
                      child: Text("START"),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Fluttercards()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

