import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Placeholder(
          color: Colors.red,
          fallbackWidth: 60.0,
          fallbackHeight: 60.0,
        ),
        SizedBox(
          height: 8.0,
        ),
        Placeholder(
          color: Colors.white,
          fallbackWidth: 60.0,
          fallbackHeight: 20.0,
        ),
      ],
    );
  }
}
