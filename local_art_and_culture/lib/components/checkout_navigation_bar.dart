import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_art_and_culture/models/product_model.dart';
import 'package:local_art_and_culture/src/feature/product/screens/checkout_product.dart';

class CheckoutNavigationBar extends StatefulWidget {
  final ModelProduct product;
  final String imagePath;
  final int index;

  const CheckoutNavigationBar({
    Key? key,
    required this.product,
    required this.imagePath,
    required this.index,
  }) : super(key: key);

  @override
  State<CheckoutNavigationBar> createState() => _CheckoutNavigationBarState();
}

class _CheckoutNavigationBarState extends State<CheckoutNavigationBar> {
  bool isCartSelected = false;
  bool isChatSelected = false;
  List<String> imagePaths = [
    'assets/img/produk/produk-4.png',
    'assets/img/produk/product-5.png',
    'assets/img/produk/produk-1.png',
    'assets/img/produk/product-6.png',
    'assets/img/produk/product-7.png',
    'assets/img/produk/product-8.png',
    'assets/img/produk/product-9.png',
    'assets/img/produk/product-10.png',
    'assets/img/produk/product-11.png',
    'assets/img/produk/product-12.png'
  ];
  late String imagePath;

  @override
  void initState() {
    super.initState();
    imagePath = imagePaths[widget.index % imagePaths.length];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      isChatSelected = !isChatSelected;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: isChatSelected
                            ? const Color(0xff3653B0)
                            : const Color(0xffCCCCCC),
                        width: 1.5,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.chat,
                        color: isChatSelected
                            ? const Color(0xff3653B0)
                            : const Color(0xffCCCCCC),
                        size: 24.0,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isCartSelected = !isCartSelected;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: isCartSelected
                            ? const Color(0xff3653B0)
                            : const Color(0xffCCCCCC),
                        width: 1.5,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.shopping_cart,
                        color: isCartSelected
                            ? const Color(0xff3653B0)
                            : const Color(0xffCCCCCC),
                        size: 24.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CheckoutProductPage(
                              product: widget.product,
                              imagePath: imagePath,
                              index: widget.index)));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff3653B0),
                  minimumSize: const Size(209, 44),
                ),
                child: Text(
                  'Beli Sekarang',
                  style: GoogleFonts.plusJakartaSans(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
