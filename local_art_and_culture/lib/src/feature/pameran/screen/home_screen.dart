import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:local_art_and_culture/models/card_model.dart';
import 'package:local_art_and_culture/service/card_service.dart';
import 'package:local_art_and_culture/src/feature/home%20page/src/screen_home_page.dart';
import 'package:local_art_and_culture/src/feature/pameran/components/categories.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CardService cardService = CardService();
  late Future<List<CardModel>> cardsFuture;

  @override
  void initState() {
    super.initState();
    cardsFuture = cardService.getHomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    //const Padding = EdgeInsets.all(10.0);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 35.0),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () async {
                          // Navigasi ke halaman EditScreen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyHomePage()),
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 24,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0.5,
                                blurRadius: 25,
                                offset: const Offset(0, 0))
                          ]),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: "Cari di Lokasani",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(35.0),
                                  ),
                                  borderSide: BorderSide.none),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon:
                            SvgPicture.asset("assets/svg/Frame 347filter.svg"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            Container(
              margin: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(height: 2.0),
                  const Categories(),
                  const SizedBox(height: 16.0),
                  FutureBuilder<List<CardModel>>(
                    future: cardsFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                        return const Text('No data available');
                      } else {
                        return Column(
                          children: snapshot.data!.map((card) {
                            return RoundedImageCard(
                              width: MediaQuery.of(context).size.width - 32,
                              imagePath: card.imagePath,
                              title: card.title,
                              harga: card.harga,
                              location: card.location,
                            );
                          }).toList(),
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 18),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
