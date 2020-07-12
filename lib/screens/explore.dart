import 'package:airbnb/constants/constants.dart';
import 'package:airbnb/widgets/cards.dart';
import 'package:airbnb/widgets/header.dart';
import 'package:airbnb/widgets/searchbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          searchBar(),
          Header(),
          Container(
            height: 350,
            child: Cards(),
          )
        ],
      ),
    );
  }
}
