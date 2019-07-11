import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  final String picture;
  final String name;
  final String id;
  final String company;

  UserInfo({
    @required this.picture,
    @required this.name,
    @required this.id,
    @required this.company,
  }) : assert(picture != null && name != null && id != null && company != null);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Card(
          margin: EdgeInsets.zero,
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(
            width: 80.0,
            height: 80.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: FadeInImage.assetNetwork(
                placeholder: picture,
                image: picture,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 9.0,
        ),
        Row(
          children: <Widget>[
            Text(
              name,
              style: Theme.of(context).textTheme.headline.copyWith(color: Colors.white),
            ),
            SizedBox(
              width: 8.0,
            ),
            Container(
              width: 12.0,
              height: 12.0,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  CupertinoIcons.play_arrow_solid,
                  size: 8.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          id,
          style: Theme.of(context).textTheme.caption.copyWith(color: Colors.white.withOpacity(0.6)),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          company,
          style: Theme.of(context).textTheme.caption.copyWith(color: Colors.white.withOpacity(0.6)),
        )
      ],
    );
  }
}
