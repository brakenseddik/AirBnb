import 'package:airbnb/constants/constants.dart';
import 'package:airbnb/screens/Profile.dart';
import 'package:airbnb/screens/explore.dart';
import 'package:airbnb/screens/messages.dart';
import 'package:airbnb/screens/saved.dart';
import 'package:airbnb/screens/trips.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [Explore(), Saved(), Voyages(), Messages(), Profile()];
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
          selectedItemColor: Color(0xfffd5c63),
          unselectedItemColor: Colors.black45,
          showUnselectedLabels: true,
          selectedFontSize: 8,
          unselectedFontSize: 8,
          iconSize: 28,
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search),
                title: Text(
                  'EXPLORE',
                )),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.heart),
                title: Text(
                  'SAVED',
                )),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.airbnb),
                title: Text(
                  'VOYAGES',
                )),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.conversation_bubble),
                title: Text(
                  'MESSAGES',
                )),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person),
                title: Text(
                  'PROFILE',
                )),
          ]),
    );
  }
}
