import 'package:flutter/material.dart';

//this is the widget for the slider and accompaning text
class ScreenSlider extends StatefulWidget {
  @override
  State createState() => _ScreenSlider();
}

class _ScreenSlider extends State<ScreenSlider> {
  int rangeNum = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Container(
              child: Text(
                'Distance in Minutes',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Slider(
                min: 0.0,
                max: 30.0,
                value: rangeNum.toDouble(),
                activeColor: Colors.white,
                //where the actual values are updated
                onChanged: (double newValue) {
                  setState(() {
                    rangeNum = newValue.round();
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              child: Text(
                "$rangeNum Minuets",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
