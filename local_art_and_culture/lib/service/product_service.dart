import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:local_art_and_culture/models/product_model.dart';
import 'package:local_art_and_culture/utils/token_account.dart';
import 'package:local_art_and_culture/utils/utils.dart';

class ProductService {
  final Dio _dio = Dio();

  Future<List<ModelProduct>> getProducts() async {
    try {
      final String? accessToken = TokenManager.getAccessToken();

      _dio.options.headers['Authorization'] = 'Bearer $accessToken';

      final response = await _dio.get(
        Urls.baseUrl + Urls.getProduct,
      );
      debugPrint("=>${response.data}");

      if (response.data.containsKey('data') && response.data['data'] is List) {
        final List<dynamic> data = response.data['data'];
        List<ModelProduct> products =
            data.map((item) => ModelProduct.fromJson(item)).toList();
        return products;
      } else {
        debugPrint('Respons sesuai ekspektasi: $response');
        return [];
      }
    } catch (error) {
      debugPrint('Terjadi kesalahan saat melakukan permintaan: $error');
      rethrow;
    }
  }
}
