// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:local_art_and_culture/models/product_model.dart';
import 'package:local_art_and_culture/service/product_service.dart';
import 'package:local_art_and_culture/src/feature/product/screens/detail_product.dart';

class CardProducts extends StatefulWidget {
  const CardProducts({Key? key}) : super(key: key);

  @override
  State<CardProducts> createState() => _CardProductsState();
}

class _CardProductsState extends State<CardProducts> {
  late List<ModelProduct> products = [];

  @override
  void initState() {
    super.initState();
    _fetchProducts();
  }

  void _fetchProducts() async {
    try {
      ProductService productService = ProductService();
      final fetchedProducts = await productService.getProducts();
      setState(() {
        products = fetchedProducts;
      });
    } catch (error) {
      print('Error fetching products: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontFamily: 'Plus Jakarta Sans',
        ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            var item = products[index];
            String imagePath = index.isEven
                ? 'assets/gambar-produk-2.jpg'
                : 'assets/gambar-produk-1.jpg';

            String category = index.isEven ? 'Fasion' : 'Karya Tangan';
            String title = item.name!;
            String price = 'Rp ${products[index].price}';

            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailProduct(),
                  ),
                );
              },
              child: Card(
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Container(
                  width: 175,
                  height: 300,
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
                      Text(
                        price,
                        style: const TextStyle(
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
                      const SizedBox(height: 10.0),
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
            );
          },
        ),
      ),
    );
  }
}
