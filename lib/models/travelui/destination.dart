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
      imageUrl: "assets/images/b2.png",
      name: "Mark bower",
      type: "Tourist site",
      rating: 4,
      price: 250,
      startTimes: ["7:00 am", "11:00 pm"]),
  Activity(
      imageUrl: "assets/images/b1.jpg",
      name: "St Luke\'s Boomerang",
      type: "Fun based home",
      rating: 2,
      price: 3000,
      startTimes: ["8:00 am", "10:30 pm"]),
  Activity(
      imageUrl: "assets/images/b.jpg",
      name: "Peter Drake\'s Yard",
      type: "Freaking jooo",
      rating: 5,
      price: 750,
      startTimes: ["8:00 am", "5:00 pm"]),
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
