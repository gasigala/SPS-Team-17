import 'package:flutter/material.dart';

class DropDownCategory extends StatefulWidget {
  @override
  _DropDownCategoryState createState() => _DropDownCategoryState();
}

class _DropDownCategoryState extends State<DropDownCategory> {
  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black,
        ),
        child: DropdownButton(
          value: selectedValue,
           style: TextStyle(color: Colors.white, decorationColor: Colors.white),
          items: [
            DropdownMenuItem(
              child: Text('Chinese'),
              value: 0,
            ),
            DropdownMenuItem(
              child: Text('Mexican'),
              value: 1,
            ),
            DropdownMenuItem(
              child: Text('Pizza'),
              value: 2,
            ),
            DropdownMenuItem(
              child: Text('FastFood'),
              value: 3,
            ),
          ],
          onChanged: (value) {
            setState(() {
              selectedValue = value;
            });
          },
        ),
      ),
    );
  }
}
