import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FlutterLogo(
          curve: Curves.bounceOut,
          textColor: Colors.green,
          size: 25,
        ),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
            onPressed: () {}),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              icon: Icon(Icons.menu_open, color: Colors.grey),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment(0, -0.40),
                height: 100,
                color: Colors.white,
                child: Text(
                  "Hey Buddies",
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      color: Colors.green),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 70, 25, 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey[200],
                        blurRadius: 1.5,
                      )
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          child: Text(
                            "Network",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          margin: EdgeInsets.fromLTRB(24, 16, 0, 4),
                        ),
                        Container(
                          child: Text(
                            "300",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 32),
                          ),
                          margin: EdgeInsets.fromLTRB(30, 32, 0, 8),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Container(
                      width: 120,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.greenAccent[100].withOpacity(0.5)),
                      child: Center(
                          child: Text(
                        "Chat me",
                        style: TextStyle(color: Colors.green, fontSize: 18),
                      )),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Divider(),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Find Friends"),
                Text(
                  "View all friends",
                  style: TextStyle(
                      color: Colors.green[700], fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildCard("image", "Ann", "Not available", "Request"),
                  buildCard("image", "Micheal", "Away", "Request"),
                  buildCard("image", "John", "Offline", "Request"),
                  buildCard("image", "Lexis", "Online", "Request"),
                  buildCard("image", "Ann", "Not available", "Request"),
                  buildCard("image", "Micheal", "Away", "Request"),
                  buildCard("image", "John", "Offline", "Request"),
                ],
              ),
            ),
          ),
          GridView.count(
            primary: false,
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 2,
            shrinkWrap: true,
            children: [
              buildCardItems("Gideon", "Online", 1),
              buildCardItems("Max", "Away", 2),
              buildCardItems("Jay", "Away", 3),
              buildCardItems("Yimmy", "Online", 4),
              buildCardItems("Dan", "Online", 5),
              buildCardItems("Mic", "Away", 6),
              buildCardItems("Kon", "Away", 7),
              buildCardItems("Zak", "Online", 8),
            ],
          ),
          /*  GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              buildCard("image", "Ann", "Not available", "Request"),
              buildCard("image", "Micheal", "Away", "Request"),
              buildCard("image", "John", "Offline", "Request"),
              buildCard("image", "Lexis", "Online", "Request"),
              buildCard("image", "Ann", "Not available", "Request"),
              buildCard("image", "Micheal", "Away", "Request"),
              buildCard("image", "John", "Offline", "Request"),
              buildCard("image", "Lexis", "Online", "Request"),
              buildCard("image", "Ann", "Not available", "Request"),

            ],
          )*/
        ],
      ),
    );
  }

  buildCard(String imageUrl, String name, String availability, String request) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 14, bottom: 14),
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 32,
            child: Image.network(imageUrl),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              availability,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color:  availability == "Online" ? Colors.green : Colors.grey,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  request,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  buildCardItems(String name, String status, int cardIndex) {
    return Card(
      elevation: 6.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          SizedBox(
            height: 12,
          ),
          Stack(
            children: [
              /* CircleAvatar(
                backgroundColor: Colors.blueGrey,
                radius: 30,
                child: ClipOval(
                    child: Image.network(
                  url,
                  scale: 1.0,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                )),
              ),*/
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                      color: Colors.white, width: 2, style: BorderStyle.solid),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://avatarfiles.alphacoders.com/953/953.jpg')),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 40),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: status == "Online" ? Colors.green : Colors.amber,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                      color: Colors.white, width: 2, style: BorderStyle.solid),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            name,
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          Text(
            status,
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          SizedBox(height: 8),
          Expanded(
            child: Container(
                width: 175,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: status == "Online" ? Colors.green : Colors.grey),
                child: Center(
                  child: Text(
                    "Request",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ),
        ],
      ),
      margin: cardIndex.isEven
          ? EdgeInsets.fromLTRB(10, 0, 25, 10)
          : EdgeInsets.fromLTRB(10, 0, 25, 10),
    );
  }
}
