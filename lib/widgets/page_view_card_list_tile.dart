import 'package:flutter/material.dart';

class PageViewCardListTile extends StatelessWidget {
  final String title;
  final String content;
  final bool biggerContent;

  PageViewCardListTile({
    @required this.title,
    @required this.content,
    this.biggerContent = false,
  })  : assert(title != null),
        assert(content != null);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.caption,
        ),
        SizedBox(
          height: 4.0,
        ),
        Text(
          content,
          style: biggerContent ? Theme.of(context).textTheme.title : Theme.of(context).textTheme.subtitle,
        ),
      ],
    );
  }
}
