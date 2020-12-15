import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui/models/travelui/destination.dart';

class TopDestination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 10),
              child: Text(
                "Top destinations",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 16.0, bottom: 8),
              child: Text(
                "View all",
                style: TextStyle(color: Colors.blue[400]),
              ),
            ),
          ],
        ),
        buildDestinationItems(),
      ],
    );
  }

  buildDestinationItems() {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (context, index) {
          Destination destination = destinationList[index];
          return Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            height: 150,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  bottom: 5,
                  child: Container(
                    margin: EdgeInsets.all(8),
                    width: 220,
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${destination.activityList.length} activities",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            maxLines: 1,
                          ),
                          Text(
                            destination.description,
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6.0,
                            offset: Offset(0.0, 2.0))
                      ]),

                  ///contains the image
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage(destination.imageUrl),
                          height: 180,
                          width: 180,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                destination.city,
                                style: TextStyle(
                                    fontSize: 24, color: Colors.white),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  FontAwesomeIcons.locationArrow,
                                  color: Colors.white,
                                ),
                                Text(
                                  destination.country,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 24),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
        itemCount: destinationList.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
