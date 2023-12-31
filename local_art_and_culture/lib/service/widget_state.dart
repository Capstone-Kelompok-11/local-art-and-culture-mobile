import 'package:flutter/material.dart';
import 'package:local_art_and_culture/models/card_model.dart';  // Ganti impor EventModel dengan CardModel
import 'package:local_art_and_culture/service/card_service.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/card.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final CardService _cardService = CardService();
  late List<CardModel> _cardModels;  // 

  @override
  void initState() {
    super.initState();
    _fetchCardModels();  
  }

  Future<void> _fetchCardModels() async {  
    try {
      final cardModels = await _cardService.getCardModels();  
      setState(() {
        _cardModels = cardModels;
      });
    } catch (error) {
      print('Error fetching card models: $error');  
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _cardModels.length,
      itemBuilder: (context, index) {
        return RoundedImageCard(
          imagePath: _cardModels[index].imagePath ?? '',
          title: _cardModels[index].title ?? '',
          harga: _cardModels[index].harga ?? '',
          location: _cardModels[index].location ?? '',
          width: 345,
        );
      },
    );
  }
}
