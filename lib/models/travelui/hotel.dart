class Hotel {
  final imageUrl, name, address;

  final int price;

  Hotel({this.imageUrl, this.name, this.address, this.price});
}

final List<Hotel> hotelList = [
  Hotel(
      imageUrl: "assets/images/h.png",
      name: "Van Ike Hotel",
      address: "Green Street No. 4 avenue",
      price: 500),
  Hotel(
      imageUrl: "assets/images/h1.png",
      name: "Putuu maame",
      address: "Akwaaba lane",
      price: 630),
  Hotel(
      imageUrl: "assets/images/h2.png",
      name: "Broski Hotel",
      address: "Waakye avenue",
      price: 8200),
  Hotel(
      imageUrl: "assets/images/h3.png",
      name: "MixinHotel",
      address: "Hexpino Zramina",
      price: 750),
  Hotel(
      imageUrl: "assets/images/h4.png",
      name: "Agogo hotel",
      address: "Norway Junction",
      price: 1500),
];
