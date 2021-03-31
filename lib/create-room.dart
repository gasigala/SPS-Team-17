import 'package:flutter/material.dart';
import 'package:sps_team17/host-lobby-screen.dart';

import './screen-slider.dart';
import './price-buttonbar.dart';
import './dropdown-category.dart';

class CreateRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff010F32),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Create Room',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                  //this will be the enter your name part of the form
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Enter your Name',
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Enter your Address',
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                  SubmitButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SubmitButton extends StatefulWidget {
  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  bool _hasBeenPresed = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => HostLobby()));

      },
      child: Text('Submit'),
      style: ElevatedButton.styleFrom(
        primary: Colors.teal,
        minimumSize: Size(150, 36),
      ),
    );
  }
}
