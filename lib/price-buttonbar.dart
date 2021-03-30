import 'package:flutter/material.dart';

class PriceButtonBar extends StatefulWidget {
  @override
  _PriceButtonBarState createState() => _PriceButtonBarState();
}

class _PriceButtonBarState extends State<PriceButtonBar> {
  String priceRange = null;
  bool _button1 = false;
  bool _button2 = false;
  bool _button3 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        children: [
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {
                  setState(
                    () {
                      _button1 = !_button1;
                    },
                  );
                },
                child: Text('\$'),
                style: OutlinedButton.styleFrom(
                    primary: _button1 ? Colors.green : Colors.white,
                    side: BorderSide(
                        color: _button1 ? Colors.green : Colors.white,
                        width: 2)),
              ),
              OutlinedButton(
                onPressed: () {
                  setState(
                    () {
                      _button2 = !_button2;
                    },
                  );
                },
                child: Text('\$\$'),
                style: OutlinedButton.styleFrom(
                    primary: _button2 ? Colors.green : Colors.white,
                    side: BorderSide(
                        color: _button2 ? Colors.green : Colors.white,
                        width: 2)),
              ),
              OutlinedButton(
                onPressed: () {
                  setState(
                    () {
                      _button3 = !_button3;
                    },
                  );
                },
                child: Text('\$\$\$'),
                style: OutlinedButton.styleFrom(
                    primary: _button3 ? Colors.green : Colors.white,
                    side: BorderSide(
                        color: _button3 ? Colors.green : Colors.white,
                        width: 2)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
