import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:local_art_and_culture/models/login_model.dart';
import 'package:local_art_and_culture/utils/token_account.dart';
import 'package:local_art_and_culture/utils/utils.dart';
import 'package:http/http.dart' as http;

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
    const String apiUrl =
        "https://lokasani.my.id/users/login"; // Replace with your actual API endpoint

    try {
      Dio dio = Dio();

      // Define the request payload
      Map<String, dynamic> data = {
        'email': email,
        'password': password,
      };

      // Make the POST request
      Response response = await dio.post(
        apiUrl,
        data: data,
      );

      // Check if the request was successful (status code 200)
      if (response.statusCode == 200) {
        // Parse the response and return the data
        Map<String, dynamic> responseData = response.data;
        return responseData;
      } else {
        // If the request was not successful, throw an exception
        throw Exception('Failed to log in');
      }
    } catch (error) {
      // Handle Dio errors or other exceptions
      print('Error during login: $error');
      throw Exception('Failed to log in');
    }
  }

  // Future<http.Response> loginUser(String email, String password) async {
  //   final response =
  //       await http.post(Uri.parse('https://lokasani.my.id/users/login'),
  //           body: json.encode({
  //             'email': email,
  //             'password': password,
  //           }));
  //   return response;
  // }
}
