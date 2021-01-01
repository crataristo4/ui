import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsPage extends StatefulWidget {
  final heroTag, foodName, foodPrice;

  DetailsPage({this.heroTag, this.foodName, this.foodPrice});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int quantity;
  var selectedCard = "WEIGHT";

  @override
  void initState() {
    quantity = 1;
    super.initState();
  }

  _decrement() {
    setState(() {
      quantity > 1 ? quantity-- : quantity = 1;
    });
  }

  _increment() {
    setState(() {
      quantity++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          "Details",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.auto_awesome,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 82,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              Positioned(
                top: 75,
                child: Container(
                  height: MediaQuery.of(context).size.height - 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(75),
                          topRight: Radius.circular(75))),
                ),
              ),
              Positioned(
                  top: 30,
                  left: MediaQuery.of(context).size.width / 2 - 100,
                  child: Hero(
                    tag: widget.heroTag,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          image: DecorationImage(
                            image: AssetImage(widget.heroTag),
                            fit: BoxFit.cover,
                          )),
                      height: 200,
                      width: 200,
                    ),
                  )),
              Positioned(
                  top: 250,
                  left: 25,
                  right: 25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.foodName,
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.foodPrice,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                            height: 25,
                            color: Colors.grey,
                            width: 1,
                          ),
                          Container(
                            constraints:
                                BoxConstraints.expand(width: 200, height: 50),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(64)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                    icon: Icon(
                                      FontAwesomeIcons.minus,
                                      color: Colors.white,
                                    ),
                                    onPressed: _decrement),
                                Center(
                                  child: Text(
                                    "$quantity",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  // margin: EdgeInsets.only(left: 15,right: 15),
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: IconButton(
                                      icon: Icon(
                                        FontAwesomeIcons.plus,
                                        color: Colors.grey,
                                      ),
                                      onPressed: _increment),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            buildInfoCard("WEIGHT", "SIP", "30"),
                            buildInfoCard("Sami", "Nom", "14"),
                            buildInfoCard("Mox", "vim", "89"),
                            buildInfoCard("Joom", "xop", "22"),
                            buildInfoCard("Krak", "cool", "45"),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 32),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                                bottomLeft: Radius.circular(32),
                                bottomRight: Radius.circular(32))),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Text(
                              "Check out",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }

  Widget buildInfoCard(String cardTitle, var cardInfo, String cardUnit) {
    return InkWell(
        onTap: () {
          selectCard(cardTitle);
        },
        child: AnimatedContainer(
          margin: EdgeInsets.only(right: 10),
          duration: Duration(milliseconds: 500),
          curve: Curves.easeIn,
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  style: BorderStyle.solid,
                  width: 0.75,
                  color: cardTitle == selectedCard
                      ? Colors.transparent
                      : Colors.grey.withOpacity(0.3)),
              color:
                  cardTitle == selectedCard ? Color(0XFF7A9BEE) : Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 15),
                child: Text(
                  cardTitle,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: cardTitle == selectedCard
                          ? Colors.white
                          : Colors.black.withOpacity(0.5)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cardInfo,
                      style: TextStyle(
                          fontSize: 14,
                          color: cardTitle == selectedCard
                              ? Colors.white
                              : Colors.black),
                    ),
                    Text(
                      cardUnit,
                      style: TextStyle(
                          fontSize: 12,
                          color: cardTitle == selectedCard
                              ? Colors.white
                              : Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  selectCard(cardTitle) {
    setState(() {
      selectedCard = cardTitle;
    });
  }
}
