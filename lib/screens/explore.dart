import 'package:airbnb/components/aventures.dart';
import 'package:airbnb/components/cards.dart';
import 'package:airbnb/components/header.dart';
import 'package:airbnb/components/searchbar.dart';
import 'package:airbnb/constants/constants.dart';

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
            height: 160,
            child: Cards(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              'Expériences très bien notés',
              style: GoogleFonts.signika(
                  fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 300,
            child: Aventures(),
          )
        ],
      ),
    );
  }
}
