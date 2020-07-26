import 'package:airbnb/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Air Bnb',
      theme: ThemeData.light().copyWith(
          accentColor: Color(0xFFFF5A60),
          primaryColor: Color(0xFFFF5A60),
          bottomAppBarColor: Color(0xFFFF5A60)),
      home: HomePage(),
    );
  }
}
