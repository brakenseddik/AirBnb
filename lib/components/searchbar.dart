import 'package:flutter/material.dart';

class searchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(7)),
        elevation: 4.5,
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: TextField(
            decoration: InputDecoration(
                icon: Icon(Icons.search),
                hintText: 'Search...',
                border: InputBorder.none),
          ),
        ),
      ),
    );
  }
}
