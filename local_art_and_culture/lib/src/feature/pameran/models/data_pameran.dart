class Food {
  String name;
  String image;
  double IDR;
  double map;
  double rate;
  int reviews;
  bool isLiked;

  Food({
    required this.name,
    required this.image,
    required this.IDR,
    required this.map,
    required this.rate,
    required this.reviews,
    required this.isLiked,
  });
}

final List<Food> foods = [
  Food(
    name: "Orasis Art Gallery",
    image: "assets/Pameran1.png",
    IDR: 10,
    map: 0,
    rate: 4.4,
    reviews: 23,
    isLiked: false,
  ),
  Food(
    name: "Edwin's Gallery",
    image: "assets/Pameran2.png",
    IDR: 10,
    map: 0,
    rate: 4.4,
    reviews: 23,
    isLiked: true,
  ),
  Food(
    name: "Orasist Art Gallery",
    image: "assets/Pameran3.png",
    IDR: 10,
    map: 0,
    rate: 4.2,
    reviews: 10,
    isLiked: false,
  ),
  Food(
    name: "Museum Macam (Voice Against Reason)",
    image: "assets/Pameran4.png",
    IDR: 10,
    map: 0,
    rate: 4.6,
    reviews: 90,
    isLiked: true,
  ),
  Food(
    name: "Biasa Art Space Bali",
    image: "assets/Pameran5.png",
    IDR: 10,
    map: 0,
    rate: 4.0,
    reviews: 76,
    isLiked: false,
  ),
  Food(
    name: "Orasis Art Gallery",
    image: "assets/Pameran1.png",
    IDR: 10,
    map: 0,
    rate: 4.4,
    reviews: 23,
    isLiked: false,
  ),
];