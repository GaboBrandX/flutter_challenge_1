import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wg_by_sarah_d/widgets/page_view_card_list_tile.dart';

class PageViewCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              PageViewCardListTile(
                title: 'Order clerk',
                content: 'David',
                biggerContent: true,
              ),
              PageViewCardListTile(
                title: 'State',
                content: 'CSC response',
              ),
              PageViewCardListTile(
                title: 'Order time',
                content: '2019-03-21 04:44',
              ),
              PageViewCardListTile(
                title: 'Condition of judgement',
                content: 'CSC Response condition. Lorem ipsum dolor sit amet, consecteture.',
              ),
              SizedBox(
                child: CupertinoButton(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        'CSC check',
                        style: TextStyle(
                          color: Color(0xFFB42827),
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      RotatedBox(
                        quarterTurns: 3,
                        child: Icon(
                          CupertinoIcons.down_arrow,
                          color: Color(0xFFB42827),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.redAccent.withOpacity(0.3),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
