import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Restaurant extends StatefulWidget {
  @override
  _RestaurantState createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: "Likes"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.history), label: "History"),
          ]),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: Icon(FontAwesomeIcons.cookieBite), onPressed: () {}),
                Container(
                  width: 60,
                  height: 60,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset("assets/images/photo.png"),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.search, color: Colors.deepOrange),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "What are you craving for",
                    style: TextStyle(color: Colors.deepOrange, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildCardItem(
                    context,
                    "Catch up quick!",
                    "Favorite Ghanaian dish is here make sure you try it",
                    Colors.deepOrange),
                buildCardItem(context, "New in town!",
                    "More food to eat on here", Colors.blue),
                buildCardItem(context, "New in town!",
                    "More food to eat on here", Colors.black),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Top Restaurant",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Favorite restaurant by other foodies",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          buildItems(context),
          SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 14.0, left: 14, right: 14),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 36,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: Text(
                  "Explore food by categories",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildCategories(context, "assets/images/l.jpg", "Lunch"),
              buildCategories(context, "assets/images/l1.jpg", "Fast food"),
              buildCategories(context, "assets/images/l2.jpg", "For you"),
            ],
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  buildCardItem(context, String item1, String item2, Color color) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 350,
      height: 150,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14.0, left: 14, right: 14),
            child: Text(
              item1,
              style: TextStyle(fontSize: 36, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              item2,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  buildItems(context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                "assets/images/b2.png",
                height: 150,
                width: 150,
              ),
            ),
          ),
          Container(
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        // margin: EdgeInsets.only(top: 15),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, top: 8, bottom: 8),
                              child: Text(
                                "Popular",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8),
                              child: Icon(
                                Icons.thumb_up,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Burger King",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  Text(
                    "4.5/5",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 14.0),
                    child: Text(
                      "Just some dummy data here",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  buildCategories(context, String image, String item) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: 100,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 20, left: 20, top: 20),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                image,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
            child: Text(
              item,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
