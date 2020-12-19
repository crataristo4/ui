import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () => Navigator.pop(context)),
              Text(
                "Dont know what to eat ?",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Here are some recommendations for you",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 450,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              "assets/images/n.jpg",
                              fit: BoxFit.cover,
                            )),
                      ),
                      Positioned(
                        top: 350,
                        child: Container(
                          margin: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Sweet meal",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Restaurants near you",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 300,
                                child: Text(
                                  "Some dummy data goes heref fdsfadsfdsfdsafsdfsd",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildActionButtons(
                      "Cancel", [Colors.white, Colors.red], Icons.close),
                  buildActionButtons(
                      "Cancel", [Colors.white, Colors.blue], Icons.refresh),
                  buildActionButtons(
                      "Cancel", [Colors.white, Colors.green], Icons.check),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  buildActionButtons(String toolTip, List<Color> color, IconData icons) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60), color: color[0]),
          child: Icon(
            icons,
            color: color[1],
          ),
        ));
  }
}
