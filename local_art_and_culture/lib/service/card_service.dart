// cardservice.dart
import 'package:dio/dio.dart';
import 'package:local_art_and_culture/models/card_model.dart';


class CardService {
  final Dio _dio = Dio();

  Future<List<CardModel>> getDetailPameran() async {
    try {
      // Ganti URL berikut dengan URL API yang sesuai
      final String apiUrl = 'https://658144ba3dfdd1b11c42c970.mockapi.io/pameran';

      final response = await _dio.get(apiUrl);

      // Periksa kode status HTTP
      if (response.statusCode == 200) {
        // Jika sukses, konversi data mentah menjadi list CardModel
        final List<CardModel> cardModels = (response.data as List)
            .map((data) => CardModel.fromJson(data))
            .toList();

        return cardModels;
      } else {
        // Tanggapi jika ada kesalahan pada server
        throw Exception('Failed to load card');
      }
    } catch (error) {
      // Tanggapi jika ada kesalahan selama permintaan
      throw Exception('Error fetching card: $error');
    }
  }

  getCardModels() {}
}
