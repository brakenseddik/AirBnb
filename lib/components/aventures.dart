import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/*class Aventures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Trip(
          title: 'London,UK',
          imgURL: 'assets/mm.jpg',
        ),
        Trip(
          title: 'Paris,France',
          imgURL: 'assets/image.jpg',
        ),
        Trip(
          title: 'Rome,Italy',
          imgURL: 'assets/dd.jpg',
        ),
        Trip(
          title: 'Hambourg,Germany',
          imgURL: 'assets/london.jpg',
        ),
      ],
    );
  }
}*/

class Trip extends StatelessWidget {
  final String imgURL, title;
  Trip({this.title, this.imgURL});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 12, right: 12, bottom: 0),
      height: 290,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: Image(
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                  image: AssetImage(
                    imgURL,
                  ),
                ),
              ),
              Positioned(
                  top: 15,
                  right: 15,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      CupertinoIcons.heart,
                      color: Color(0xFFFF5A60),
                    ),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade700,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade700,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade700,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade700,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade700,
                      ),
                      Text(' (11.5)')
                    ],
                  ),
                ),
                Text(
                  title,
                  style: GoogleFonts.lato(
                      fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'Find, save, and share the perfect place to stay, all from your phone.'),
          )
        ],
      ),
    );
  }
}
