import 'package:flutter/material.dart';

class ScreenSlider extends StatefulWidget {
  @override
  State createState() => _ScreenSlider();
}

class _ScreenSlider extends State<ScreenSlider> {
  var range_num = 0.0;

  void _moveSlider() {}
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text('Distance in Minutes', style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Slider(
                min: 0.0,
                max: 30.0,
                value: range_num,
                activeColor: Colors.white,
                onChanged: (newValue) {
                  setState(() {
                    range_num = newValue;
                  });
                }),
          ),
        ],
      ),
    );
  }
}
