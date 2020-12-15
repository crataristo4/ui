import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      color: Colors.green,
      child: ListView.builder(
        itemBuilder: (context, index) {
          Destination destination = destinationList[index];
          return Container(
            margin: EdgeInsets.all(16),
            color: Colors.white,
            width: 210,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  color: Colors.blue,
                  width: 210,
                  height: 150,
                ),
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
