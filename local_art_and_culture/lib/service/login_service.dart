import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:local_art_and_culture/models/login_model.dart';
import 'package:local_art_and_culture/utils/token_account.dart';
import 'package:local_art_and_culture/utils/utils.dart';

class SignInService {
  final Dio _dio = Dio();

  Future<ModelSignIn?> signInAccount(String email, String password) async {
    try {
      final response = await _dio.post(
        Urls.baseUrl + Urls.loginAccount,
        data: {
          'email': email,
          'password': password,
        },
      );
      // ignore: avoid_print
      print(response.statusCode);
      debugPrint("=>${response.data}");

      // final ModelSignIn? modelSignIn = modelSignInFromJson(response.data);
      final modelSignIn = modelSignInFromJson(response.data);
      TokenManager.setAccessToken(modelSignIn.data.users.token);
      return modelSignIn;
    } catch (error) {
      debugPrint('Terjadi kesalahan saat melakukan permintaan: $error');
      return null;
    }
  }

  Future<Map<String, dynamic>> loginUser(String email, String password) async {
    const String apiUrl = "https://lokasani.my.id/users/login";

    try {
      Dio dio = Dio();

      Map<String, dynamic> data = {
        'email': email,
        'password': password,
      };

      Response response = await dio.post(
        apiUrl,
        data: data,
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = response.data;
        return responseData;
      } else {
        throw Exception('Failed to log in');
      }
    } catch (error) {
      // ignore: avoid_print
      print('Error during login: $error');
      throw Exception('Failed to log in');
    }
  }
}
