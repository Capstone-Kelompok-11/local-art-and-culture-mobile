// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_art_and_culture/src/feature/product/detail_product.dart';

class ListProductPage extends StatefulWidget {
  const ListProductPage({Key? key}) : super(key: key);

  @override
  State<ListProductPage> createState() => _ListProductPageState();
}

class _ListProductPageState extends State<ListProductPage> {
  List<String> categories = ["All", "Book", "Fashion", "Handmade"];
  List<String> products = [
    "Product 1",
    "Product 2",
    "Product 3",
    "Product 4",
    "Product 5"
  ];
  final ScrollController _scrollController = ScrollController();
  String? _selectedCategory;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  child: const Icon(
                    Icons.keyboard_backspace_rounded,
                    size: 25,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                searchBar(context),
                const SizedBox(width: 10),
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xff768DD5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.filter_list,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            buttonFilter(context),
            cardProduct(context)
          ],
        ),
      ),
    );
  }

  Widget searchBar(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(top: 60),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(153, 153, 153, 0.25),
            spreadRadius: 1,
            blurRadius: 8,
          )
        ],
      ),
      child: const Row(
        children: [
          Icon(Icons.search, color: Color(0xff333333)),
          SizedBox(width: 8),
          Expanded(
            child: TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }

  Widget buttonFilter(BuildContext context) {
    return Container(
      height: 35,
      width: MediaQuery.of(context).size.width - 8,
      margin: const EdgeInsets.only(bottom: 15.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        controller: _scrollController,
        children: categories.map((category) {
          bool isPressed = _selectedCategory == category;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _selectedCategory = isPressed ? null : category;
                });
                print(_selectedCategory);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isPressed
                    ? const Color(0xff3653B0)
                    : const Color(0xffCCCCCC),
                minimumSize: const Size(130, 0),
              ),
              child: Text(
                category,
                style: GoogleFonts.plusJakartaSans(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget cardProduct(BuildContext context) {
    return Expanded(
      child: DefaultTextStyle(
        style: const TextStyle(
          fontFamily: 'Plus Jakarta Sans',
        ),
        child: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 140.0,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  String imagePath = index.isEven
                      ? 'lib/assets/gambar-produk-2.jpg'
                      : 'lib/assets/gambar-produk-1.jpg';

                  String category = index.isEven ? 'Fasion' : 'Handmade';
                  String title = index.isEven
                      ? 'Baju Kebaya Wanita Pink Full Set Lokal'
                      : 'Dompet Wanita Series AMC Kulit Naga Asli  ';

                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailProduct()),
                      );
                    },
                    child: Card(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: OverflowBox(
                        maxHeight: 320,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    const Color(0xFF999999).withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 25,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(8.0),
                                      bottom: Radius.circular(8.0),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage(imagePath),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 4.0, horizontal: 10.0),
                                  decoration: BoxDecoration(
                                    color: index.isEven
                                        ? const Color(0xff3653B0)
                                        : const Color(0xff026c52),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Text(
                                    category,
                                    style: const TextStyle(
                                      fontSize: 11.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8.0),
                                Text(
                                  title,
                                  style: const TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 8.0),
                                const Text(
                                  'Rp 180.000',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 8.0),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Color(0xff666666),
                                      size: 16.0,
                                    ),
                                    SizedBox(width: 4.0),
                                    Text(
                                      'Denpasar',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Color(0xff666666),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8.0),
                                RichText(
                                  text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: const [
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.star_rounded,
                                          color: Color(0xfff3b502),
                                          size: 16.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' 4.9 | ',
                                        style: TextStyle(
                                          fontSize: 13.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '153 terjual',
                                        style: TextStyle(
                                          fontSize: 13.0,
                                          color: Color(0xff666666),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}
