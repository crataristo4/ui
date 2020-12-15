import 'package:flutter/material.dart';

class BuildSearchItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(32), topLeft: Radius.circular(32)),
            color: Colors.grey[300]),
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              margin: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                  ),
                  Text("Search a pet to adopt"),
                  IconButton(icon: Icon(Icons.auto_awesome), onPressed: () {})
                ],
              ),
            ),
          ],
        ));
  }
}
