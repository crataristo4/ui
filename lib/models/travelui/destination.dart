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
  Activity(
      imageUrl: "",
      name: "St Paul\'s Yuks",
      type: "Tour",
      rating: 3,
      price: 300,
      startTimes: ["6:00 am", "10:00 am"]),
];

List<Destination> destinationList = [
  Destination(
      imageUrl: "assets/images/p.jpg",
      city: "Florida",
      country: "United states",
      description: Constants.dummy,
      activityList: activityList),
  Destination(
      imageUrl: "assets/images/p1.jpg",
      city: "Accra",
      country: "Ghana",
      description: Constants.dummy,
      activityList: activityList),
  Destination(
      imageUrl: "assets/images/p2.jpg",
      city: "Kumerica",
      country: "Ghana",
      description: Constants.dummy,
      activityList: activityList),
  Destination(
      imageUrl: "assets/images/p3.jpg",
      city: "Bono",
      country: "Ghana",
      description: Constants.dummy,
      activityList: activityList),
  Destination(
      imageUrl: "assets/images/p.jpg",
      city: "Zabzugu",
      country: "Northern Hemisphire",
      description: Constants.dummy,
      activityList: activityList),
];
