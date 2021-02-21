import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui/config/constants.dart';

class SecondPageSuggestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: [
            Container(
              height: 250,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 18, left: 18),
                  child: Text(
                    Constants.suggest,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 200),
                  height: MediaQuery.of(context).size.height - 190,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(64),
                          topRight: Radius.circular(64))),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width / 2.5,
                  top: 160,
                  child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.facebookMessenger,
                        size: 64,
                        color: Colors.deepOrange,
                      ),
                      onPressed: null),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 250, left: 16, right: 16),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: TextFormField(
                        maxLines: 10,
                        style: TextStyle(fontSize: 24),
                        decoration: InputDecoration(
                            labelText: "Enter your suggestion",
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[400])),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[400]))),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Container(
                      height: 50,
                      //  margin: EdgeInsets.only(top: 450, left: 16, right: 16),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
