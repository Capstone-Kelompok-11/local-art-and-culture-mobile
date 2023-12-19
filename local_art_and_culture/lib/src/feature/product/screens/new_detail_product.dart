import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_art_and_culture/components/checkout_navigation_bar.dart';
import 'package:local_art_and_culture/models/product_model.dart';
import 'package:local_art_and_culture/src/feature/product/screens/product_page.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/products_store.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/review_product.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/varian_product.dart';

class NewDetailProduct extends StatefulWidget {
  final ModelProduct product;
  final String imagePath;
  final int index;

  const NewDetailProduct({
    Key? key,
    required this.product,
    required this.imagePath,
    required this.index,
  }) : super(key: key);

  @override
  State<NewDetailProduct> createState() => _NewDetailProductState();
}

class _NewDetailProductState extends State<NewDetailProduct> {
  bool isFavorite = false;
  late String category;

  @override
  void initState() {
    super.initState();
    determineCategory();
  }

  void determineCategory() {
    if (widget.index == 0 || widget.index == 1 || widget.index == 8) {
      category = 'Fashion';
    } else if (widget.index == 2 ||
        widget.index == 3 ||
        widget.index == 6 ||
        widget.index == 7 ||
        widget.index == 9) {
      category = 'Karya Tangan';
    } else if (widget.index == 4 || widget.index == 5) {
      category = 'Buku';
    } else if (widget.index == 8) {
      category = 'Karya Tangan';
    } else {
      category = 'Default Category';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset(
                widget.imagePath,
                width: 450,
                height: 350,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 20,
                left: 20,
                child: IconButton(
                  icon: const Icon(
                    Icons.keyboard_backspace_rounded,
                    color: Colors.white,
                    size: 28.0,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ListProductPage(),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                top: 20,
                right: 20,
                child: IconButton(
                  icon: Icon(
                    isFavorite
                        ? Icons.favorite_rounded
                        : Icons.favorite_border_rounded,
                    color: Colors.white,
                    size: 28.0,
                  ),
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                ),
              ),
            ],
          ),
          Container(
            color: const Color(0xffF2F2F2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 20,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: const Color(0xffF6C63C),
                            ),
                            child: Center(
                              child: Text(
                                category,
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '${widget.product.name}',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Rp ${widget.product.price}',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff3653B0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Icon(
                              Icons.star_rounded,
                              color: Color(0xfff3b502),
                              size: 17.0,
                            ),
                            const SizedBox(width: 4.0),
                            RichText(
                              text: TextSpan(
                                text: '4.9',
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                                children: [
                                  const WidgetSpan(
                                    child: SizedBox(width: 10.0),
                                  ),
                                  TextSpan(
                                    text: '153 Terjual',
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff999999),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const VarianProductButton(),
                const SizedBox(height: 8),
                const ProductStore(),
                const SizedBox(height: 8),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Deskripsi Produk',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '${widget.product.description}',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff666666),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return SingleChildScrollView(
                                  child: Container(
                                    height: 650,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25.0),
                                        topRight: Radius.circular(25.0),
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: const Icon(
                                                Icons.clear_sharp,
                                                size: 24,
                                              ),
                                            ),
                                            Text(
                                              'Deskripsi Produk',
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        Text(
                                          '${widget.product.description}',
                                          style: GoogleFonts.plusJakartaSans(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff666666),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Baca Selengkapnya',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff637DCF),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const ReviewProduct(),
              ],
            ),
          ),
          const CheckoutNavigationBar()
        ],
      ),
    );
  }
}
