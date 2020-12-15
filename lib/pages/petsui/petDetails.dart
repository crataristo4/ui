import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui/config/constants.dart';

class PetDetails extends StatefulWidget {
  final time, type, description, location, image;

  PetDetails(
      {this.type, this.image, this.description, this.time, this.location});

  @override
  _PetDetailsState createState() => _PetDetailsState();
}

class _PetDetailsState extends State<PetDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Stack(
              children: [
                buildAppBar(),

                ///shows the details of the pet
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 400, right: 20, left: 20, bottom: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                widget.type,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Icon(Icons.animation),
                            ),
                          ],
                        ),
                        Divider(
                          height: 2,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 16.0, right: 8.0),
                          child: Expanded(
                              child: Text(widget.description,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Icon(Icons.access_time,
                                      color: Colors.grey)),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 4, right: 8, bottom: 8),
                                child: Text(widget.time),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Icon(Icons.location_on,
                                      color: Colors.grey)),
                              Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(widget.location,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),

            ///displays users details
            buildUserDetails(),

            ///displays the footer
            buildFooter(),
          ],
        ),
      ),
    );
  }

  buildAppBar() {
    return Container(
      height: 450,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
      ),
      child: Stack(
        children: [
          ///The two containers has the back arrow item and menu at the right
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
                IconButton(
                    icon: Icon(
                      Icons.local_florist_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ],
            ),
          ),

          ///Contains the pet image
          Container(
              child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(widget.image))),
        ],
      ),
    );
  }

  buildUserDetails() {
    return Expanded(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  ///this row contains users photo , name and occupation
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [

                            ///holds the image of the user
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                    style: BorderStyle.solid),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/photo.png")),
                              ),
                            ),

                            ///users name and position
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, left: 8),
                                  child: Text(
                                    "Aristo crat",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 16.0, left: 8, top: 4),
                                  child: Text(
                                    "Artist",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  ///This row contains the date
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 20, right: 20),
                        child: Text("15/12/2020",
                            style: TextStyle(color: Colors.grey)),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                margin: EdgeInsets.only(right: 16, left: 16, bottom: 16),
                child: Text(
                  Constants.dummy,
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.grey[700]),
                ),
              )
            ],
          ),
        ));
  }

  buildFooter() {
    return Container(
      height: 100,
      margin: EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(48), topRight: Radius.circular(48))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 32),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 30,
                      color: Colors.green[900],
                      offset: Offset(3, 5))
                ],
                color: Colors.green[900],
                borderRadius: BorderRadius.circular(16)),
            child: Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 30,
                    color: Colors.grey[900],
                    offset: Offset(3, 5))
              ],
            ),
            margin: EdgeInsets.symmetric(horizontal: 32),
            height: 50,
            child: RaisedButton.icon(
              icon: Icon(
                Icons.call,
                color: Colors.white,
              ),
              color: Colors.green[900],
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              label: Text(
                "Contact me",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
