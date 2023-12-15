import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:local_art_and_culture/models/register_model.dart';
import 'package:local_art_and_culture/utils/token_account.dart';
import 'package:local_art_and_culture/utils/utils.dart';

class RegisterService {
  final Dio _dio = Dio();

  Future<ModelRegister?> signUpAccount(ModelRegister registerModel) async {
    try {
      final response = await _dio.post(
        Urls.baseUrl + Urls.registerAccount,
        data: registerModel.toJson(),
      );

      final modelRegister = modelRegisterFromJson(response.data);
      TokenManager.setAccessToken(modelRegister.data.users.token);

      return modelRegister;
    } catch (error) {
      debugPrint('Terjadi kesalahan saat melakukan permintaan: $error');
      return null;
    }
  }
}
