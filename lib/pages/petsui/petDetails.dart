import 'package:flutter/material.dart';

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
                        top: 400, right: 20, left: 20, bottom: 50),
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
            )
          ],
        ),
      ),
    );
  }

  buildAppBar() {
    return Container(
      height: 450,
      decoration: BoxDecoration(
        color: Colors.grey[400],
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
}
