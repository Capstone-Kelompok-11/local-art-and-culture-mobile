import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:local_art_and_culture/models/article_model.dart';
import 'package:local_art_and_culture/utils/token_account.dart';
import 'package:local_art_and_culture/utils/utils.dart';

class ArticleService {
  final Dio _dio = Dio();

  Future<List<ArticleModel>> getArticles() async {
    try {
      final String? accessToken = TokenManager.getAccessToken();

      _dio.options.headers['Authorization'] = 'Bearer $accessToken';

      final response = await _dio.get(
        Urls.baseUrl + Urls.getArticle,
      );
      debugPrint("=>${response.data}");

      print(response.data['data']['data'].length);
      print(response.data['data']['data']);

      final List<dynamic> data = response.data['data']['data'];
      print(data);
      List<ArticleModel> articles =
          data.map((item) => ArticleModel.fromJson(item)).toList();
      print(articles);
      print('ini adalah data');
      // data.forEach((e) {
      //   print(e);
      //   ModelProduct.fromJson(e);
      // });

      return articles;

      // print(products);
      // print('ini adalah service product');
      // return products;
    } catch (error) {
      debugPrint('Terjadi kesalahan saat melakukan permintaan: $error');
      rethrow;
    }
  }
}
