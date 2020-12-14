import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          Row(
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
                        "assets/images/a2.jpg",
                        fit: BoxFit.cover,
                      )),
                  radius: 35,
                ),
              )
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(32),
                      topLeft: Radius.circular(32)),
                  color: Colors.grey[300]),
              child: Column(
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    margin: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            icon: Icon(Icons.search),
                            onPressed: () {},
                          ),
                        ),
                        Text("Search a pet to adopt"),
                        IconButton(
                            icon: Icon(Icons.auto_awesome), onPressed: () {})
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
