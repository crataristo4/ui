import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:ui/pages/hotelsui/HomeHotelPage.dart';
import 'package:ui/pages/petsui/petsHomePage.dart';
import 'package:ui/pages/restaurant/restaurant.dart';
import 'package:ui/pages/speedcode/inspirationapp.dart';
import 'package:ui/widgets/button.dart';

import 'nutritionui/first_page.dart';
import 'suggestions/firstpage.dart';
import 'travelui/home.dart';

class HomeButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FlutterLogo(
          duration: Duration(seconds: 2000),
          curve: Curves.bounceIn,
          textColor: Theme.of(context).primaryColor,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          MyButton().buildButton("Talent ui", Colors.white, Colors.green, () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          }),
          MyButton().buildButton("Pets ui", Colors.white, Colors.amber, () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => PetsHome()));
          }),
          MyButton().buildButton("Travel ui", Colors.white, Colors.blue, () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeHotelPage()));
          }),
          MyButton().buildButton("Restaurant ui", Colors.white, Colors.black,
              () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Restaurant()));
          }),
          MyButton().buildButton(
              "Suggestions ui", Colors.white, Colors.deepOrange, () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FirstPageSuggestion()));
          }),
          MyButton().buildButton("Nutrition ui", Colors.black, Colors.grey, () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => FirstPage()));
          }),
          MyButton().buildButton(
              "Inspiration app", Colors.white, Colors.blueGrey, () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => InspirationApp()));
          }),
        ],
      ),
    );
  }
}
