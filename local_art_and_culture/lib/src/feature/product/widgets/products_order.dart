import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_art_and_culture/models/price_model.dart';
import 'package:local_art_and_culture/models/product_model.dart';
import 'package:provider/provider.dart';

class ProductsOrder extends StatefulWidget {
  final ModelProduct product;
  final String imagePath;
  final int index;

  const ProductsOrder({
    Key? key,
    required this.product,
    required this.imagePath,
    required this.index,
  }) : super(key: key);

  @override
  State<ProductsOrder> createState() => _ProductsOrderState();
}

class _ProductsOrderState extends State<ProductsOrder> {
  late PriceCalculationModel priceCalculator;

  @override
  void initState() {
    super.initState();
    priceCalculator =
        Provider.of<PriceCalculationModel>(context, listen: false);
    fetchData();
  }

  Future<void> fetchData() async {
    priceCalculator.setProductPrice(widget.product.price ?? 0);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PriceCalculationModel>(
      builder: (context, priceCalculator, child) {
        return Container(
          color: Colors.white,
          height: 185,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 16.0, 16.0, 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Produk yang Dibeli',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        widget.imagePath,
                        height: 83,
                        width: 83,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.product.name ?? 'Nama Produk Kosong',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                priceCalculator.getTotalPriceFormatted(),
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff3653B0),
                                ),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      priceCalculator.decreaseQuantity();
                                    },
                                    icon: const Icon(
                                      Icons.remove_circle,
                                      size: 30,
                                      color: Color(0xff3653B0),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    '${priceCalculator.quantity}',
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  IconButton(
                                    onPressed: () {
                                      priceCalculator.increaseQuantity();
                                    },
                                    icon: const Icon(
                                      Icons.add_circle,
                                      size: 30,
                                      color: Color(0xff3653B0),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
