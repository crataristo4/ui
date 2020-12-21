import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui/config/constants.dart';
import 'package:ui/models/suggest.dart';
import 'package:ui/pages/suggestions/secondpage.dart';

class FirstPageSuggestion extends StatelessWidget {
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
                  child: SafeArea(
                    child: Container(
                      margin: EdgeInsets.only(top: 2),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          Suggest suggest = suggestList[index];
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              SecondPageSuggestion()));
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  height: 100,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          style: BorderStyle.solid,
                                          color: Colors.grey),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(16),
                                          topRight: Radius.circular(16))),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            color: Colors.blue.withOpacity(0.4),
                                          ),
                                          child: Text(
                                            suggest.name,
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 16.0, right: 8),
                                            child: SizedBox(
                                                width: 150,
                                                child: Text(
                                                  suggest.status,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 16),
                                            padding: EdgeInsets.only(
                                                right: 20,
                                                left: 20,
                                                top: 8,
                                                bottom: 8),
                                            width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              color:
                                                  Colors.grey.withOpacity(0.2),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Icon(
                                                  suggest.isLiked
                                                      ? Icons.favorite
                                                      : Icons.thumb_up,
                                                  color: suggest.isLiked
                                                      ? Colors.red
                                                      : Colors.blue,
                                                ),
                                                Text("${suggest.likes}")
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                        itemCount: suggestList.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 150,
                  bottom: 570,
                  child: Container(
                    child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.facebookMessenger,
                          size: 64,
                          color: Colors.deepOrange,
                        ),
                        onPressed: null),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
