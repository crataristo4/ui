import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:ui/pages/home.dart';
import 'package:ui/pages/petsui/petsHomePage.dart';
import 'package:ui/widgets/button.dart';

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


        ],
      ),
    );
  }
}
