import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui/config/configuration.dart';

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
          buildSearchItem(),
          SizedBox(
            height: 24,
          ),
         
          buildPetsItem(),

          SizedBox(
            height: 12,
          ),

          buildStackedPage(),
          // buildPetList(),
        ],
      ),
    );
  }

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

  buildSearchItem() {
    return Container(
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(32), topLeft: Radius.circular(32)),
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
                  IconButton(icon: Icon(Icons.auto_awesome), onPressed: () {})
                ],
              ),
            ),
          ],
        ));
  }

  buildPetsItem() {
    return Container(
      height: 150,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(12),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: shadowList,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset(categories[index]["iconPath"]),
                ),
                Text(categories[index]["name"]),
              ],
            ),
          );
        },
      ),
    );
  }

  buildPetList() {
    List<Pets> petsList = Pets().petsList;

    return Container(
      height: 150,
      width: double.infinity,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          Pets newPet = petsList[index];
          return PetItems(
            pets: newPet,
          );
        },
      ),
    );
  }

  buildStackedPage() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      height: 250,
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    boxShadow: shadowList,
                    color: Colors.blueGrey[300],
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                Align(child: Image.asset("assets/images/a2.png"))
              ],
            ),
          ),
          Expanded(
              child: Container(
            height: 200,
            margin: EdgeInsets.only(top: 40, bottom: 20),
            decoration: BoxDecoration(
              boxShadow: shadowList,
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
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
                        "Ascension",
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
                  padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                  child: Expanded(
                      child: Text("German ascension wild dog",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold))),
                ),
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Icon(Icons.access_time, color: Colors.grey)),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, left: 4, right: 8, bottom: 8),
                      child: Text("6 hours ago"),
                    ),
                  ],
                ),
                Divider(
                  height: 3,
                ),
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Icon(Icons.location_on, color: Colors.grey)),
                    Expanded(
                        child: Text("Fourth avenue , green street",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)))
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class PetItems extends StatelessWidget {
  final Pets pets;

  PetItems({this.pets});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 100,
        height: 100,
        child: Column(
          children: [
            Image.asset(
              pets.image,
              width: 100,
              height: 100,
            ),
            Text(pets.name)
          ],
        ),
      ),
    );
  }
}

class Pets {
  final name;
  final image;

  Pets({this.name, this.image});

  List<Pets> petsList = [
    Pets(name: "Dog", image: "assets/images/a.jpg"),
    Pets(name: "Rabbit", image: "assets/images/a8.jpg"),
    Pets(name: "Foul", image: "assets/images/a5.jpg"),
    Pets(name: "Monkey", image: "assets/images/a6.jpg")
  ];
}
