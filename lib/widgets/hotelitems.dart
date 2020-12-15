import 'package:flutter/material.dart';
import 'package:ui/models/travelui/hotel.dart';

class HotelItems extends StatelessWidget {
  const HotelItems({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 10),
              child: Text(
                "Exclusive",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 16.0, bottom: 8),
              child: Text(
                "See all",
                style: TextStyle(color: Colors.blue[400]),
              ),
            ),
          ],
        ),
        buildDestinationItems(),
      ],
    );
  }

  buildDestinationItems() {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (context, index) {
          Hotel hotel = hotelList[index];
          return Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            height: 150,
            width: 250,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  bottom: 5,
                  child: Container(
                    margin: EdgeInsets.all(8),
                    width: 220,
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 10.0, bottom: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              hotel.address,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Text(
                              "GHC ${hotel.price} / night",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6.0,
                            offset: Offset(0.0, 2.0))
                      ]),

                  ///contains the image
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage(hotel.imageUrl),
                          height: 180,
                          width: 180,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
        itemCount: hotelList.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
