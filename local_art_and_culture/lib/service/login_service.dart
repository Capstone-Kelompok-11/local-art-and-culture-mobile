import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:local_art_and_culture/models/login_model.dart';
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
      debugPrint("=>${response.data}");

      final ModelSignIn? modelSignIn = modelSignInFromJson(response.data);
      return modelSignIn;
    } catch (error) {
      debugPrint('Terjadi kesalahan saat melakukan permintaan: $error');
      return null;
    }
  }
}
