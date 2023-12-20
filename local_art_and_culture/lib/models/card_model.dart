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
      imagePath: json['imagePath'],
      title: json['title'],
      harga: json['harga'],
      location: json['location'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'imagePath': imagePath,
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
      "imagePath": "https://loremflickr.com/640/480",
      "title": "Ms. Martha Stanton",
      "harga": "268846695",
      "location": "Deerfield Beach",
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
