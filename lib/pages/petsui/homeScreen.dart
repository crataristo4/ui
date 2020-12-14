import 'package:flutter/material.dart';
import 'package:ui/config/configuration.dart';

class PetsHomeScreen extends StatefulWidget {
  @override
  _PetsHomeScreenState createState() => _PetsHomeScreenState();
}

class _PetsHomeScreenState extends State<PetsHomeScreen> {
  double xOffSet = 0;
  double yOffSet = 0;
  double scaleFactor = 1;
  bool isChanged = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffSet, yOffSet, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      curve: Curves.easeInOutSine,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30))),
      child: ListView(
        children: [
          buildHeader(),
          SizedBox(
            height: 24,
          ),
          buildSearchItem(),
          SizedBox(
            height: 24,
          ),
          Container(
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
          ),

          buildPetsItem(),
          // buildPetList(),
        ],
      ),
    );
  }

  buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(top: 8, left: 20),
          child: isChanged
              ? IconButton(
                  color: Colors.black,
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    setState(() {
                      xOffSet = 0;
                      yOffSet = 0;
                      scaleFactor = 1;
                      isChanged = false;
                    });
                  })
              : IconButton(
                  color: Colors.black,
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    setState(() {
                      xOffSet = 230;
                      yOffSet = 150;
                      scaleFactor = 0.8;
                      isChanged = true;
                    });
                  }),
        ),
        Column(
          children: [
            Text(
              "Kofi Manu",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Row(
              children: [
                Icon(
                  Icons.add_location,
                  color: Colors.green[300],
                ),
                Text(
                  "Number 7 street",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(right: 20),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: ClipOval(
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  "assets/images/a2.jpg",
                  fit: BoxFit.cover,
                )),
            radius: 35,
          ),
        )
      ],
    );
  }

  buildSearchItem() {
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

  buildPetsItem() {
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

  buildPetList() {
    List<Pets> petsList = Pets().petsList;

    return Container(
      height: 150,
      width: double.infinity,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          Pets newPet = petsList[index];
          return PetItems(
            pets: newPet,
          );
        },
      ),
    );

    return ListView.builder(
      itemBuilder: (context, index) {
        Pets newPet = petsList[index];
        return PetItems(
          pets: newPet,
        );
      },
      itemCount: petsList.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
    );
  }
}

class PetItems extends StatelessWidget {
  final Pets pets;

  PetItems({this.pets});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 100,
        height: 100,
        child: Column(
          children: [
            Image.asset(
              pets.image,
              width: 100,
              height: 100,
            ),
            Text(pets.name)
          ],
        ),
      ),
    );
  }
}

class Pets {
  final name;
  final image;

  Pets({this.name, this.image});

  List<Pets> petsList = [
    Pets(name: "Dog", image: "assets/images/a.jpg"),
    Pets(name: "Rabbit", image: "assets/images/a8.jpg"),
    Pets(name: "Foul", image: "assets/images/a5.jpg"),
    Pets(name: "Monkey", image: "assets/images/a6.jpg")
  ];
}
