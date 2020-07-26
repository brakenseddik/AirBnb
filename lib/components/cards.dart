import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardItem(
            title: 'Logements',
            imgURL: 'assets/zz.jpg',
          ),
          CardItem(
            title: 'Expériences',
            imgURL: 'assets/hambourh.jpg',
          ),
          CardItem(
            title: 'Aventures',
            imgURL: 'assets/dd.jpg',
          )
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String imgURL;
  final String title;
  CardItem({this.imgURL, this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 15, left: 7, right: 7, bottom: 15),
        height: 130,
        width: 130,
        child: Material(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          elevation: 4.5,
          child: Column(
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12)),
                  child: Image.asset(
                    imgURL,
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height / 7.5,
                    width: 130,
                  )),
              Text(
                title,
                style: GoogleFonts.lato(
                  fontSize: 18,
                ),
              )
            ],
          ),
        ));
  }
}
