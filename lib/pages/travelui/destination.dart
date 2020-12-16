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
        ///Stack contains images and location details of the place selected
        Stack(
          children: [
            buildHeader(),
            buildTopStack(),
            buildLocationItems(),
            buildSingleFreak(),
          ],
        ),

        buildActivities(),
      ],
    ));
  }

  buildHeader() {
    return Container(
      height: 350,
      width: MediaQuery
          .of(context)
          .size
          .width,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
                color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
          ]),
      child: Hero(
        tag: widget.destination.imageUrl,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Image(
            image: AssetImage(widget.destination.imageUrl),
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          ),
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
              onPressed: () {
                Navigator.pop(context);
              }),
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

  buildLocationItems() {
    return Positioned(
      bottom: 15,
      left: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              widget.destination.city,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                FontAwesomeIcons.locationArrow,
                color: Colors.white,
                size: 15,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                widget.destination.country,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }

  buildSingleFreak() {
    return Positioned(
      bottom: 15,
      right: 15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.location_on,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }

  buildActivities() {
    return Container(
        padding: EdgeInsets.only(left: 16),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: MediaQuery
            .of(context)
            .size
            .height / 2,
        width: MediaQuery
            .of(context)
            .size
            .width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40), color: Colors.white),
        child: ListView.builder(
          itemBuilder: (context, item) {
            return Stack(
              children: [
                Container(

                  height: 170,
                  width: MediaQuery
                      .of(context)
                      .size
                      .height,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        )
                      ]),

                  /* child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Positioned(right: 30,
                      child: Container(
                      height: 150,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
                          ]),
                      child: Hero(
                        tag: widget.destination.imageUrl,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image(
                            image: AssetImage(widget.destination.imageUrl),
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      ),
                  ),
                    ),
                    ],
                  ),*/
                ),

                ///Contains the activity image stacked on the container
                Positioned(left: 0.5,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 6,
                                  offset: Offset(0, 2))
                            ]),
                        child: Hero(
                          tag: activityList[item].imageUrl,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage(activityList[item].imageUrl),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            );
          },
          itemCount: activityList.length,
          scrollDirection: Axis.vertical,
        ));
  }
}
