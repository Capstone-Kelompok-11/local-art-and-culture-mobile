import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:local_art_and_culture/models/event_model.dart';
import 'package:local_art_and_culture/utils/token_account.dart';
import 'package:local_art_and_culture/utils/utils.dart';

class EventService {
  final Dio _dio = Dio();

  Future<List<EventModel>> getEvents() async {
    try {
      final String? accessToken = TokenManager.getAccessToken();

      _dio.options.headers['Authorization'] = 'Bearer $accessToken';

      final response = await _dio.get(
        Urls.baseUrl +
            Urls.getEvents, // Sesuaikan dengan endpoint API yang sesuai
      );
      debugPrint("=>${response.data}");

      print(response.data['data']['data'].length);
      print(response.data['data']['data']);

      final List<dynamic> data = response.data['data']['data'];
      print(data);
      List<EventModel> events =
          data.map((item) => EventModel.fromJson(item)).toList();
      print(events);
      print('ini adalah data');
      // data.forEach((e) {
      //   print(e);
      //   EventModel.fromJson(e);
      // });

      return events;

      // print(events);
      // print('ini adalah service event');
      // return events;
    } catch (error) {
      debugPrint('Terjadi kesalahan saat melakukan permintaan: $error');
      rethrow;
    }
  }

  static fetchEvents() {}
}
