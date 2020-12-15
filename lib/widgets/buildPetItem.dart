import 'package:flutter/material.dart';
import 'package:ui/config/configuration.dart';

class BuildPetsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(12),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: shadowList,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset(categories[index]["iconPath"]),
                ),
                Text(categories[index]["name"]),
              ],
            ),
          );
        },
      ),
    );
  }
}
