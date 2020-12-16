import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui/widgets/hotelitems.dart';
import 'package:ui/widgets/topDestination.dart';

class HomeHotelPage extends StatefulWidget {
  @override
  _HomeHotelPageState createState() => _HomeHotelPageState();
}

class _HomeHotelPageState extends State<HomeHotelPage> {
  int _itemSelected = 0;
  int _bottomNavSelected = 0;

  //LIST OF ICON DATA
  List<IconData> iconDataList = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavSelected,
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bed), title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.search), title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/images/photo.png"),
              ),
              title: SizedBox.shrink()),
        ],
        onTap: (value) {
          setState(() {
            _bottomNavSelected = value;
          });
        },
      ),
      body: SafeArea(
          child: ListView(
        children: [
          buildHeader(),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: iconDataList
                .asMap()
                    .entries
                    .map((e) => buildIconsSection(e.key))
                    .toList(),
              ),
              SizedBox(height: 8),
              TopDestination(),
              SizedBox(
                height: 8,
              ),
              HotelItems(),
            ],
          )),
    );
  }

  //header
  buildHeader() {
    return Padding(
      padding: EdgeInsets.only(left: 24.0, right: 32, top: 8),
      child: Text(
        "Tell us what you want to find",
        style: TextStyle(
            fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }

  //icons section
  Widget buildIconsSection(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _itemSelected = index;
        });
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: _itemSelected == index
                ? Theme.of(context).accentColor
                : Color(0xFFE7EBEE)),
        child: Icon(
          iconDataList[index],
          color: _itemSelected == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4),
        ),
      ),
    );
  }
}
