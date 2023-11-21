import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Event Page',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Page'),
      ),
      body: ListView(
        children: const [
          // Event 1
          EventCard(
            imageUrl: 'https://assets.larikuinfo.id/2023/07/18/banner-alkafest-2023.jpg',
            title: 'Alkafest 2023 Closing Ceremony',
            time: '19:02',
            location: 'Gedung Serba Guna Alka',
            description: 'Penutupan acara Alkafest 2023 dengan penampilan dari berbagai artis dan musisi terkenal.',
          ),
          // Event 2
          EventCard(
            imageUrl: 'https://assets.larikuinfo.id/2023/07/20/banner-akurat-festival.jpg',
            title: 'Akurat Festival',
            location: 'Padang Expo',
            description: 'Festival musik dan budaya yang menampilkan berbagai musisi dan seniman dari berbagai genre.', time: '',
          ),
          // Event 3
          EventCard(
            imageUrl: 'https://assets.larikuinfo.id/2023/07/20/banner-sejong-market.jpg',
            title: 'Sejong Market',
            location: 'Kawasan Sejong',
            description: 'Pasar yang menjual berbagai produk dari Korea Selatan, termasuk makanan, minuman, dan suvenir.', time: '',
          ),
          // Event 4
          EventCard(
            imageUrl: 'https://assets.larikuinfo.id/2023/07/20/banner-run-wm-e.jpg',
            title: 'RUN WME',
            location: 'Jalan Sudirman',
            description: 'Lomba lari yang diselenggarakan oleh WME dengan rute sepanjang 10 kilometer.', time: '',
          ),
        ],
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;
  final String location;
  final String description;

  const EventCard({
    required this.imageUrl,
    required this.title,
    required this.time,
    required this.location,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(imageUrl),
            const SizedBox(height: 10),
            Text(title, style: const TextStyle(fontSize: 20)),
            Text(time, style: const TextStyle(fontSize: 16)),
            Text(location, style: const TextStyle(fontSize: 14)),
            Text(description, style: const TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
