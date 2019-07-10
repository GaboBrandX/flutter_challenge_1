import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  final String label;
  final Icon icon;

  SquareButton({
    @required this.label,
    @required this.icon,
  })  : assert(label != null),
        assert(icon != null);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          width: 60.0,
          height: 60.0,
          child: CupertinoButton(
            padding: EdgeInsets.zero,
            borderRadius: BorderRadius.circular(20.0),
            onPressed: () {},
            color: Color(0xFFB42827),
            child: Icon(icon.icon, size: 26.0,),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Container(
          width: 60.0,
          height: 20.0,
          child: Center(
            child: Text(
              label,
              style: Theme.of(context).textTheme.caption.copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
