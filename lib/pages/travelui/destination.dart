import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
        body: SingleChildScrollView(
      child: Column(
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
      ),
    ));
  }

  buildHeader() {
    return Container(
      height: 350,
      width: MediaQuery.of(context).size.width,
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
        padding: EdgeInsets.only(left: 10),
        margin: EdgeInsets.only(top: 30),
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40), color: Colors.white),
        child: ListView.builder(
          itemBuilder: (context, item) {
            return Stack(
              children: [
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.height,
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
                ),

                ///Contains the activity details stacked on the container
                Positioned(
                  left: 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///image
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
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            image: AssetImage(activityList[item].imageUrl),
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      ),

                      ///details
                      Container(
                        margin: EdgeInsets.only(top: 30, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ///activity name
                                Container(
                                  width: 100,
                                  child: Text(
                                    activityList[item].name,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),

                                ///price
                                Text(
                                  "GHC ${activityList[item].price}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )
                              ],
                            ),

                            ///description
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                activityList[item].type,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              child: RatingBar.builder(
                                onRatingUpdate: (val) {},
                                initialRating:
                                    activityList[item].rating.toDouble(),
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: false,
                                itemSize: 20,
                                itemCount: 5,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 2.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                              ),
                            ),

                            ///start and end time
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Start time",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color: Colors.green.withOpacity(0.3),
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            activityList[item].startTimes[0],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                color: Colors.blueGrey),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Close time",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color: Colors.green.withOpacity(0.3),
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            activityList[item].startTimes[1],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                color: Colors.blueGrey),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
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
