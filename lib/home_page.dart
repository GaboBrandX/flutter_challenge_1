import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wg_by_sarah_d/widgets/page_view_card.dart';
import 'package:wg_by_sarah_d/widgets/square_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wg_by_sarah_d/widgets/tracking_lines.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 1;
  PageController _pageController = PageController(
    viewportFraction: 0.92,
    initialPage: 1,
  );

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    _pageController.addListener(() {
      setState(() => _currentIndex = _pageController.page.round());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xFF2B292A),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: CupertinoNavigationBar(
              backgroundColor: Color(0xFF2B292A),
              border: Border.all(
                style: BorderStyle.none,
              ),
              actionsForegroundColor: Colors.white,
              leading: Icon(IconData(0xF394, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage)),
            ),
          ),
          Positioned(
            top: 68.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height - (MediaQuery.of(context).size.height / 1.8) - 120.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Welcome! ',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 26.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Ryan',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ]),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SquareButton(
                          icon: Icon(FontAwesomeIcons.search),
                          label: 'Lookup',
                        ),
                        SquareButton(
                          icon: Icon(FontAwesomeIcons.userAlt),
                          label: 'Customer',
                        ),
                        SquareButton(
                          icon: Icon(FontAwesomeIcons.headset),
                          label: 'Contacts',
                        ),
                        SquareButton(
                          icon: Icon(FontAwesomeIcons.solidComments),
                          label: 'Message',
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            width: 7.0,
                            height: 7.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFB42827),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            'Service Request',
                            style: Theme.of(context).textTheme.subtitle.copyWith(color: Colors.white),
                          ),
                          Expanded(
                            child: SizedBox(),
                          ),
                          Icon(
                            CupertinoIcons.ellipsis,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 120.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.8 - 68.0,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: PageView(
                      controller: _pageController,
                      children: <Widget>[
                        PageViewCard(),
                        PageViewCard(),
                        PageViewCard(),
                        PageViewCard(),
                        PageViewCard(),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: TrackingLines(
                        length: 5,
                        currentIndex: _currentIndex,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: 120.0,
              color: Color(0xFFB42827),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Container(
                            width: 45.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Colors.white.withOpacity(0.1),
                            ),
                            child: Center(
                              child: Icon(
                                IconData(0xF391, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              '260',
                              style: Theme.of(context).textTheme.headline.copyWith(fontWeight: FontWeight.w500, color: Colors.white),
                            ),
                            Text(
                              'My application',
                              style: Theme.of(context).textTheme.caption.copyWith(color: Colors.white.withOpacity(0.5)),
                            ),
                          ],
                        ),
                        Expanded(child: SizedBox()),
                        CupertinoButton(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'SUBMISSION',
                            style: TextStyle(
                              color: Color(0xFFB42827),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0.0,
            bottom: 0.0,
            left: 0.0,
            child: Container(
              width: (MediaQuery.of(context).size.width / 3) * 2,
              height: double.infinity,
              color: Colors.white,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height - (MediaQuery.of(context).size.height / 1.8 - 68.0) - 120.0,
                    color: Color(0xFFB42827),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
