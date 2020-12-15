import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui/widgets/buildPetItem.dart';
import 'package:ui/widgets/buildSearchItem.dart';
import 'package:ui/widgets/buildStackedPage.dart';

class PetsHomeScreen extends StatefulWidget {
  @override
  _PetsHomeScreenState createState() => _PetsHomeScreenState();
}

class _PetsHomeScreenState extends State<PetsHomeScreen> {
  double xOffSet = 0;
  double yOffSet = 0;
  double scaleFactor = 1;
  bool isChanged = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffSet, yOffSet, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      curve: Curves.easeInOutSine,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30))),
      child: ListView(
        children: [
          buildHeader(),
          SizedBox(
            height: 24,
          ),
          //buildSearchItem(),
          BuildSearchItem(),
          SizedBox(
            height: 24,
          ),

          BuildPetsItem(),

          SizedBox(
            height: 12,
          ),

          BuildStackedPage(
            petImage: "assets/images/a2.png",
            type: "Ascension",
            description: "German ascension wild dog",
            time: "6 hours ago",
            location: "Fourth avenue , green street",
          ),

          BuildStackedPage(
            petImage: "assets/images/ax.png",
            type: "Puppy",
            description: "Cute puppy doggie",
            time: "2 hours ago",
            location: "Mascot city",
          ),
        ],
      ),
    );
  }

  //header
  buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(top: 8, left: 20),
          child: isChanged
              ? IconButton(
              color: Colors.black,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                setState(() {
                  xOffSet = 0;
                  yOffSet = 0;
                  scaleFactor = 1;
                  isChanged = false;
                });
              })
              : IconButton(
              color: Colors.black,
              icon: Icon(Icons.menu),
              onPressed: () {
                setState(() {
                  xOffSet = 230;
                  yOffSet = 150;
                  scaleFactor = 0.8;
                  isChanged = true;
                });
              }),
        ),
        Column(
          children: [
            Text(
              "Kofi Manu",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Row(
              children: [
                Icon(
                  Icons.add_location,
                  color: Colors.green[300],
                ),
                Text(
                  "Number 7 street",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(right: 20),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: ClipOval(
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  "assets/images/a9.png",
                  fit: BoxFit.cover,
                )),
            radius: 35,
          ),
        )
      ],
    );
  }


}
