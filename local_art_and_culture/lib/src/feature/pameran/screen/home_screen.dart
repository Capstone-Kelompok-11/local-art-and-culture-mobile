import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:local_art_and_culture/src/feature/pameran/components/categories.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/card.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    const Padding = EdgeInsets.all(10.0);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 16.0,
            ),
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
                        onPressed: () {},
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
                              hintText: "Cari....",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25.0),
                                  ),
                                  borderSide: BorderSide.none),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
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
              margin: EdgeInsets.all(16.0), // Atur margin sesuai kebutuhan
              child: Column(
                children: [
                  SizedBox(height: 16.0),
                  Categories(),
                  SizedBox(height: 16.0),
                  
                  RoundedImageCard(
                    width: MediaQuery.of(context).size.width - 32,
                    imagePath: 'assets/img/Pameran2.png',
                    title: 'Edwin galley',
                    harga: 'From IDR 0 K',
                    location: 'Edwin Gallery',
                  ),
                  SizedBox(height: 16),
                  // Tambahkan widget lainnya sesuai kebutuhan
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}