import 'package:airbnb/components/aventures.dart';
import 'package:airbnb/components/cards.dart';
import 'package:airbnb/components/header.dart';
import 'package:airbnb/components/searchbar.dart';
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
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: null,
        child: Icon(
          Icons.location_on,
          color: Color(0xFFFF5A60),
        ),
      ),
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
                  fontSize: 22,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Trip(
            title: '£87',
            imgURL: 'assets/mm.jpg',
          ),
          Trip(
            title: '£86',
            imgURL: 'assets/image.jpg',
          ),
          Trip(
            title: '£98',
            imgURL: 'assets/dd.jpg',
          ),
          Trip(
            title: '£111',
            imgURL: 'assets/london.jpg',
          ),
          /* Container(
             height: 300,
            child: Aventures(),
          )*/
        ],
      ),
    );
  }
}
