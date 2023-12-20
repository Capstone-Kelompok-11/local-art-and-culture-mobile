class CardModel {
  final String imagePath;
  final String title;
  final String harga;
  final String location;
  final String id;

  CardModel({
    required this.imagePath,
    required this.title,
    required this.harga,
    required this.location,
    required this.id,
  });

  factory CardModel.fromJson(Map<String, dynamic> json) {
    return CardModel(
      imagePath: json['ImagePath'],
      title: json['title'],
      harga: json['harga'],
      location: json['location'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ImagePath': imagePath,
      'title': title,
      'harga': harga,
      'location': location,
      'id': id,
    };
  }
}

void main() {
  // Contoh penggunaan CardModel
  final data = [
    {
      "ImagePath":
          "https://s3-ap-southeast-1.amazonaws.com/loket-production-sg/images/banner/20231218140940_657ff0341512e.jpg",
      "title": "Dua Tahun Bandung",
      "harga": "50",
      "location": "Hafa Warehouse",
      "id": "1"
    },
    // ... (data lainnya)
  ];

  List<CardModel> cards = data.map((item) => CardModel.fromJson(item)).toList();

  // Cetak hasil konversi ke objek CardModel
  for (var card in cards) {
    print(card.toJson());
  }
}
