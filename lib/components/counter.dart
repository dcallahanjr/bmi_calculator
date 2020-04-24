import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmicalculator/components/round_icon_button.dart';
import 'package:bmicalculator/constants.dart';

class Counter extends StatefulWidget {
  final int cardItem;
  final String cardText;

  Counter({@required this.cardItem, @required this.cardText});

  @override
  _CounterState createState() => _CounterState(
    item: cardItem,
    text: cardText,
  );
}

class _CounterState extends State<Counter> {
  int item;
  String text;

  _CounterState({@required this.item, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          text,
          style: kLabelTextStyle,
        ),
        Text(
          item.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPressed: () {
                setState(() {
                  if (item != 1) {
                    item--;
                  }
                });
              },
            ),
            SizedBox(
              width: 10,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPressed: () {
                setState(() {
                  item++;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}