class Suggest {
  final name;
  final status;
  final bool isLiked;
  final int likes;

  Suggest({this.name, this.status, this.isLiked, this.likes});
}

List<Suggest> suggestList = [
  Suggest(
      name: "John", status: "Create learning paths", isLiked: true, likes: 10),
  Suggest(
      name: "Linda",
      status: "Include soft skills training",
      isLiked: false,
      likes: 15),
  Suggest(
      name: "Steven",
      status: "Reward and recognize",
      isLiked: false,
      likes: 10),
  Suggest(
      name: "John", status: "Create learning paths", isLiked: true, likes: 10),
  Suggest(
      name: "Linda",
      status: "Include soft skills training",
      isLiked: true,
      likes: 0),
  Suggest(
      name: "Steven",
      status: "Reward and recognize",
      isLiked: false,
      likes: 10),
  Suggest(
      name: "David",
      status: "Use relatable and relevant examples ",
      isLiked: false,
      likes: 30),
];
