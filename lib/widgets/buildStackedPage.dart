import 'package:flutter/material.dart';
import 'package:ui/config/configuration.dart';
import 'package:ui/pages/petsui/petDetails.dart';

class BuildStackedPage extends StatelessWidget {
  final type;
  final time;
  final description;
  final location;
  final petImage;

  BuildStackedPage(
      {this.petImage, this.type, this.description, this.time, this.location});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return PetDetails(
            type: type,
            image: petImage,
            description: description,
            time: time,
            location: location,
          );
        }));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        height: 250,
        child: Row(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      boxShadow: shadowList,
                      color: Colors.blueGrey[300],
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  Align(child: Image.asset(petImage))
                ],
              ),
            ),
            Expanded(
                child: Container(
              height: 200,
              margin: EdgeInsets.only(top: 40, bottom: 20),
              decoration: BoxDecoration(
                boxShadow: shadowList,
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          type,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(Icons.animation),
                      ),
                    ],
                  ),
                  Divider(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                    child: Expanded(
                        child: Text(description,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold))),
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Icon(Icons.access_time, color: Colors.grey)),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 4, right: 8, bottom: 8),
                        child: Text(time),
                      ),
                    ],
                  ),
                  Divider(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Icon(Icons.location_on, color: Colors.grey)),
                      Expanded(
                          child: Text(location,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)))
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
