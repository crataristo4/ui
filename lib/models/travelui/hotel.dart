class Hotel {
  final imageUrl, name, address;

  final int price;

  Hotel({this.imageUrl, this.name, this.address, this.price});
}

final List<Hotel> hotelList = [
  Hotel(
      imageUrl: "assets/images/a.jpg",
      name: "Van Ike Hotel",
      address: "Green Street ",
      price: 500),
  Hotel(
      imageUrl: "assets/images/a11.jpg",
      name: "Putuu maame",
      address: "Akwaaba lane",
      price: 630),
  Hotel(
      imageUrl: "assets/images/a22.jpg",
      name: "Broski Hotel",
      address: "Waakye avenue",
      price: 8200),
];
