class RestaurantItems {
  final itemName;
  final itemDescription;
  final int itemPrice;
  final bool isAdded;

  RestaurantItems(
      {this.itemName, this.itemDescription, this.itemPrice, this.isAdded});
}

List<RestaurantItems> getItems = [
  RestaurantItems(
      itemName: "Whombagan",
      itemDescription: "Best seller",
      itemPrice: 3000,
      isAdded: false),
  RestaurantItems(
      itemName: "Boxcu",
      itemDescription: "Ready to hit ",
      itemPrice: 3000,
      isAdded: true),
  RestaurantItems(
      itemName: "Matki",
      itemDescription: "Discounted",
      itemPrice: 3000,
      isAdded: false),
  RestaurantItems(
      itemName: "Axale",
      itemDescription: "Recommended for you",
      itemPrice: 600,
      isAdded: true),
];
