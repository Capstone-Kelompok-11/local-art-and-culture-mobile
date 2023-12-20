import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/categories.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/card.dart';


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      child: Column(
        children: [
          //const SizedBox(height: 10.0),
          const Categories(),
          //const SizedBox(height: 16.0),
          FutureBuilder<List<CardData>>(
            future:
                fetchData(), // Panggil metode fetchData untuk mendapatkan data dari API
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator(); // Menampilkan indikator loading selama data diambil
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                // Memproses data dan membangun widget RoundedImageCard sesuai dengan data
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final cardData = snapshot.data![index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom:16.0), 
                      child: RoundedImageCard(
                        width: MediaQuery.of(context).size.width - 32,
                        imagePath: cardData.imagePath,
                        title: cardData.title,
                        harga: cardData.harga,
                        location: cardData.location,
                      ),
                    );
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Future<List<CardData>> fetchData() async {
    final response =
        await Dio().get('https://658144ba3dfdd1b11c42c970.mockapi.io/pameran');

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
      imagePath: json['imagePath'],
      title: json['title'],
      harga: json['harga'],
      location: json['location'],
    );
  }
}
