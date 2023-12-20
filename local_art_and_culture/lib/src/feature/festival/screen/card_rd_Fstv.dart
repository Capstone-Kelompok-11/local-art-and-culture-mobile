import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/card.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/categories.dart';

class CardRDFestival extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Categories(), // Gantilah dengan widget kategori yang sesuai
          SizedBox(height: 16.0),
          FutureBuilder<List<CardData>>(
            future:
                fetchData(), // Panggil metode fetchData untuk mendapatkan data dari API
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator(); // Menampilkan indikator loading selama data diambil
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                // Memproses data dan membangun widget RoundedImageCard sesuai dengan data
                return Column(
                  children: snapshot.data!.map((cardData) {
                    return RoundedImageCard(
                      imagePath: cardData.imagePath,
                      title: cardData.title,
                      harga: cardData.harga,
                      location: cardData.location,
                    );
                  }).toList(),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Future<List<CardData>> fetchData() async {
    // Gantilah URL dengan URL API yang sesuai
    final response = await Dio().get(
        'https://6581b6533dfdd1b11c4400ee.mockapi.io/Festival/v1/festival');

    if (response.statusCode == 200) {
      // Jika sukses, konversi data mentah menjadi list CardData
      final List<CardData> cardDataList = (response.data as List)
          .map((data) => CardData.fromJson(data))
          .toList();

      return cardDataList;
    } else {
      // Tanggapi jika ada kesalahan pada server
      throw Exception('Failed to load card data');
    }
  }
}

// Definisikan kelas CardData sesuai dengan struktur data yang diterima dari API
class CardData {
  final String imagePath;
  final String title;
  final String harga;
  final String location;

  CardData({
    required this.imagePath,
    required this.title,
    required this.harga,
    required this.location,
  });

  factory CardData.fromJson(Map<String, dynamic> json) {
    return CardData(
      imagePath: json['ImagePath'] ?? '',
      title: json['title'] ?? '',
      harga: json['harga'] ?? '',
      location: json['location'] ?? '',
    );
  }
}
