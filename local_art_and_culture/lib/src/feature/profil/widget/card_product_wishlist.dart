import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardProductWishlist extends StatefulWidget {
  const CardProductWishlist({super.key});

  @override
  State<CardProductWishlist> createState() => _CardProductWishlistState();
}

class _CardProductWishlistState extends State<CardProductWishlist> {
  List<String> products = ["Product 1", "Product 2", "Product 3", "Product 4"];

  List<String> categories = ['Karya Tangan', 'Fashion'];

  List<String> imagePaths = [
    'assets/img/produk/produk-1.png',
    'assets/img/produk/produk-2.png',
    'assets/img/produk/produk-3.png',
    'assets/img/produk/produk-4.png',
  ];

  List<String> titles = [
    'Aksesoris Set Perhiasan Mutiara Khas Bali',
    'Tas Anyaman Purun Cokelat Handmade',
    'Baju Atasan Wanita Batik Premium Homemade',
    'Baju Kebaya Wanita Pink Full Set'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTextStyle(
        style: const TextStyle(
          fontFamily: 'Plus Jakarta Sans',
        ),
        child: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 130.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 220.0,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  String imagePath = imagePaths[index % imagePaths.length];
                  String category = categories[index % categories.length];
                  String title = titles[index % titles.length];

                  return Card(
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: OverflowBox(
                      maxHeight: 402,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF999999).withOpacity(0.25),
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
                                height: 160.0,
                                width: 160.0,
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
                                      ? const Color(0xff339981)
                                      : const Color(0xffF6C63C),
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
                              const SizedBox(height: 5.0),
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
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: const Color(0xff3653B0),
                                        width: 1,
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.delete_outline,
                                      size: 22,
                                      color: Color(0xff3653B0),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff3653B0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      minimumSize: const Size(115, 30),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Beli Sekarang',
                                      style: GoogleFonts.plusJakartaSans(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
