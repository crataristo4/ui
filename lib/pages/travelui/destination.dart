import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui/models/travelui/destination.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;

  DestinationScreen({this.destination});

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            buildHeader(),
            buildTopStack(),
          ],
        )
      ],
    ));
  }

  buildHeader() {
    return Container(
      height: 350,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
                color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Image(
          image: AssetImage(widget.destination.imageUrl),
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }

  buildTopStack() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: Icon(
                Icons.arrow_back_sharp,
                color: Colors.black,
              ),
              onPressed: () {}),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  icon: Icon(Icons.search, color: Colors.black),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(FontAwesomeIcons.accusoft, color: Colors.black),
                  onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }
}
