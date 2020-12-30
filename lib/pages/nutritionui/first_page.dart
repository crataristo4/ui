import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui/pages/nutritionui/second_page.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                Container(
                  width: 125,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.restaurant,
                            color: Colors.white,
                          ),
                          onPressed: null),
                      IconButton(
                          icon: Icon(
                            Icons.sort,
                            color: Colors.white,
                          ),
                          onPressed: null),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Text(
              "Healthy Food",
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 185,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(75))),
            child: ListView(
              padding: EdgeInsets.only(left: 25, right: 20),
              primary: false,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 10),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 330,
                    child: ListView(
                      children: [
                        buildFoodItems(
                            "assets/images/l1.jpg", "Coffee tea", "GHC 250"),
                        buildFoodItems(
                            "assets/images/n.jpg", "Gizzard Sauce ", "GHC 450"),
                        buildFoodItems(
                            "assets/images/o.jpg", "Fried rice", "GHC 150"),
                        buildFoodItems(
                            "assets/images/l2.jpg", "Cookies", "GHC 350"),
                        buildFoodItems("assets/images/l.jpg", "Grapes and Pine",
                            "GHC 650"),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60,
                      height: 65,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 1,
                              style: BorderStyle.solid),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)),
                      child: Icon(FontAwesomeIcons.search),
                    ),
                    Container(
                      width: 60,
                      height: 65,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 1,
                              style: BorderStyle.solid),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 8.0, top: 4),
                                child: Text(
                                  "2",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )),
                          Icon(FontAwesomeIcons.shoppingBag),
                        ],
                      ),
                    ),
                    Container(
                      height: 65,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 1,
                              style: BorderStyle.solid),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16)),
                      child: Center(
                        child: Text(
                          "Check out",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildFoodItems(String imgPath, String foodName, String foodPrice) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 15),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => DetailsPage(
                        heroTag: imgPath,
                        foodName: foodName,
                        foodPrice: foodPrice,
                      )));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(3, 6),
                          blurRadius: 6)
                    ],
                  ),
                  child: Hero(
                      tag: imgPath,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(imgPath),
                          fit: BoxFit.cover,
                          height: 75,
                          width: 75,
                        ),
                      )),
                ),
                //Hero(tag: imgPath, child: Image(image: AssetImage(imgPath),fit: BoxFit.cover,height: 75,width: 75,)),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      foodName,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      foodPrice,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            )),
            IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.blue,
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
