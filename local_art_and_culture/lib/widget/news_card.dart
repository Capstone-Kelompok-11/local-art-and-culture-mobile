import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String date;
  final String content;

  const NewsCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.date,
    required this.content,
  }) : super(key: key);

  Future<List<NewsCard>> fetchData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://newsapi.org/v2/everything?q=tesla&dari=22-10-2023&sortBy=diterbitkanDi&apiKey=2196eb2b8e104a7dae40225a94ed7a28'));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final List<dynamic> articles = data['articles'];

        List<NewsCard> newsCards = articles
            .map((article) => NewsCard.fromMap({
                  'urlToImage': article['urlToImage'],
                  'judul': article['title'],
                  'diterbitkanDi': article['publishedAt'],
                  'keterangan': article['content'],
                }))
            .toList();

        return newsCards;
      } else {
        throw Exception('Failed to load news');
      }
    } catch (error) {
      // ignore: avoid_print
      print('Error fetching news: $error');
      rethrow; // Anda bisa memutuskan untuk melemparkan kembali kesalahan atau menangani sesuai kebutuhan.
    }
  }

  factory NewsCard.fromMap(Map<String, dynamic> map) {
    return NewsCard(
      imagePath: map['urlToImage'] ?? '',
      title: map['judul'] ?? '',
      date: map['diterbitkanDi'] ?? '',
      content: map['keterangan'] ?? '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 363,
      height: 113,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              imagePath,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.calendar_today,
                      size: 16,
                      color: Colors.grey,
                    ),
                    Text(
                      ' $date',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  // Tambahkan bagian ini
                  child: Text(
                    content,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
