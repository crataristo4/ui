import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InspirationApp extends StatefulWidget {
  @override
  _InspirationAppState createState() => _InspirationAppState();
}

class _InspirationAppState extends State<InspirationApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 244, 1),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        brightness: Brightness.light,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: null),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Find Your",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                    child: Text(
                      "Inspiration",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 8),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 20),
                          hintText: "Search your inspiration",
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Promo deal",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  promotionCard("assets/images/h.jpg"),
                  promotionCard("assets/images/h1.jpg"),
                  promotionCard("assets/images/h2.jpg"),
                  promotionCard("assets/images/h3.jpg"),
                  promotionCard("assets/images/h4.jpg"),
                ],
              ),
            ),
            buildDeals("Best Deal", "assets/images/h.jpg"),
            buildDeals("Wild places", "assets/images/h1.jpg"),
          ],
        ),
      )),
    );
  }

  Widget promotionCard(String image) {
    return AspectRatio(
      aspectRatio: 3 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(12),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                0.1,
                0.9
              ], colors: [
                Colors.green.withOpacity(0.8),
                Colors.red.withOpacity(.1)
              ])),
        ),
      ),
    );
  }

  buildDeals(String name, String image) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
              0.4,
              0.9
            ], colors: [
              Colors.black.withOpacity(0.8),
              Colors.blue.withOpacity(.1)
            ]),
            color: Colors.black,
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
        ));
  }
}
