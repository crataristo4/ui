import 'package:ui/config/constants.dart';
import 'package:ui/models/travelui/activities.dart';

class Destination {
  String imageUrl, city, country, description;
  List<Activity> activityList;

  Destination(
      {this.imageUrl,
      this.city,
      this.country,
      this.description,
      this.activityList});
}

List<Activity> activityList = [
  Activity(
      imageUrl: "",
      name: "Mark bower",
      type: "Tour",
      rating: 5,
      price: 250,
      startTimes: ["8:00 am", "11:00 am"]),
  Activity(
      imageUrl: "",
      name: "St Luke\'s Boomerang",
      type: "Tour",
      rating: 5,
      price: 30,
      startTimes: ["8:00 am", "11:00 am"]),
];

List<Destination> destinationList = [
  Destination(
      imageUrl: "assets/images/b.jpg",
      city: "Florida",
      country: "United states",
      description: Constants.dummy,
      activityList: activityList),
  Destination(
      imageUrl: "assets/images/b1.jpg",
      city: "Accra",
      country: "Ghana",
      description: Constants.dummy,
      activityList: activityList),
  Destination(
      imageUrl: "assets/images/b2.png",
      city: "Kumerica",
      country: "Ghana",
      description: Constants.dummy,
      activityList: activityList),

];
