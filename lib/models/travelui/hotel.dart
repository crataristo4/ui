class Hotel {
  final imageUrl, name, address;

  final int price;

  Hotel({this.imageUrl, this.name, this.address, this.price});
}

final List<Hotel> hotelList = [
  Hotel(
      imageUrl: "assets/images/h.jpg",
      name: "Van Ike Hotel",
      address: "Green Street No. 4 avenue",
      price: 500),
  Hotel(
      imageUrl: "assets/images/h1.jpg",
      name: "Putuu maame",
      address: "Akwaaba lane",
      price: 630),
  Hotel(
      imageUrl: "assets/images/h2.jpg",
      name: "Broski Hotel",
      address: "Waakye avenue",
      price: 8200),
  Hotel(
      imageUrl: "assets/images/h3.jpg",
      name: "MixinHotel",
      address: "Hexpino Zramina",
      price: 750),
  Hotel(
      imageUrl: "assets/images/h4.jpg",
      name: "Agogo hotel",
      address: "Norway Junction",
      price: 1500),
];
