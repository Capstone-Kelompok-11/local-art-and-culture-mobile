import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FstvProvider extends ChangeNotifier {
  List _posts = [];

  List get posts => _posts;

  Future<void> fetchPosts() async {
    try {
      final response = await http.get(Uri.parse(
          'https://6581b6533dfdd1b11c4400ee.mockapi.io/Festival/v1/festival'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        _posts = data["{}"];
        notifyListeners();
      }
    } catch (e) {
      print(e);
    }
  }
}
