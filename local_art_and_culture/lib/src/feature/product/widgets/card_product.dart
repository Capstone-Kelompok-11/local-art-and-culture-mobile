// ignore_for_file: avoid_print, unnecessary_null_comparison

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
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchProducts();
  }

  void _fetchProducts() async {
    try {
      ProductService productService = ProductService();
      final fetchedProducts = await productService.getProducts();
      print(fetchedProducts);
      setState(() {
        products = fetchedProducts;
        isLoading = false;
      });
      print(fetchedProducts.length);
      print('ini adalah fungsi fetch produk');
    } catch (error) {
      print('Error fetching products: $error');
      setState(() {
        isLoading = false;
      });
    } finally {}
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTextStyle(
        style: const TextStyle(
          fontFamily: 'Plus Jakarta Sans',
        ),
        child: ListView(
          children: [
            if (isLoading)
              const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xff3653B0)),
                ),
              ),
            if (!isLoading && products.isEmpty)
              const Center(child: Text('Tidak ada produk yang ditemukan')),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
              child: SizedBox(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 175.0,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    var item = products[index];
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
                    String imagePath = imagePaths[index % imagePaths.length];

                    String category;
                    if (index == 0 || index == 1 || index == 8) {
                      category = 'Fashion';
                    } else if (index == 2 ||
                        index == 3 ||
                        index == 6 ||
                        index == 7 ||
                        index == 9) {
                      category = 'Karya Tangan';
                    } else if (index == 4 || index == 5) {
                      category = 'Buku';
                    } else if (index == 8) {
                      category = 'Karya Tangan';
                    } else {
                      category = 'Default Category';
                    }

                    String title = item.name!;
                    String price = 'Rp ${products[index].price}';

                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailProduct()),
                        );
                      },
                      child: Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: OverflowBox(
                          maxHeight: 350,
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
            ),
            const SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}
