import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ui/models/restaurantui/restaurantItems.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildFirstItem(context),
          buildSecondItem(),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildChips("Cheese"),
                buildChips("Whoopers"),
                buildChips("Joombo"),
                buildChips("Makerel"),
                buildChips("Xambi"),
                buildChips("Grams"),
                buildChips("Hexim"),
              ],
            ),
          ),
          buildListItems(),
          Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Total Price",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "GH 56894",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  buildFirstItem(context) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: ClipRRect(
          child: Image(
        image: AssetImage("assets/images/o.jpg"),
        fit: BoxFit.cover,
        height: 250,
      )),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.white,
            blurRadius: 6,
            spreadRadius: 10,
            offset: Offset(2, 2))
      ]),
    );
  }

  buildSecondItem() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Burger King",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildDistanceContainer("24 km"),
                        buildDistanceContainer("36 km"),
                        IconButton(
                            icon: Icon(
                              Icons.info,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              print("Info");
                            })
                      ],
                    )
                  ],
                )),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(
                    "4.5",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange),
                  ),
                  Text("Rating",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      )),
                ],
              ),
            )
          ],
        )
      ],
    );
  }

  buildDistanceContainer(String distance) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(distance,
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            )),
      ),
    );
  }

  buildChips(String label) {
    return Container(
        margin: EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 8),
        child: Chip(
          label: Text(
            label,
            style: TextStyle(color: Colors.grey[700], fontSize: 18),
          ),
          backgroundColor: Colors.white,
          elevation: 4,
        ));
  }

  buildListItems() {
    return Expanded(
      child: SafeArea(
        child: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              RestaurantItems restaurant = getItems[index];
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                height: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                restaurant.itemName,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(restaurant.itemDescription,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey)),
                            ],
                          ),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.favorite,
                              color:
                                  restaurant.isAdded ? Colors.red : Colors.grey,
                            ),
                            onPressed: null)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text("GHC ${restaurant.itemPrice}"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: MaterialButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              restaurant.isAdded ? "Added" : "Add",
                              style: TextStyle(color: Colors.white),
                            ),
                            color: restaurant.isAdded
                                ? Colors.grey
                                : Colors.deepOrange,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            },
            itemCount: getItems.length,
            scrollDirection: Axis.vertical,
            primary: true,
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
          ),
        ),
      ),
    );
  }
}
