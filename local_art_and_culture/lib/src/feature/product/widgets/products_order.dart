import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_art_and_culture/models/payment_model.dart';
import 'package:provider/provider.dart';

class ProductsOrder extends StatefulWidget {
  const ProductsOrder({super.key});

  @override
  State<ProductsOrder> createState() => _ProductsOrderState();
}

class _ProductsOrderState extends State<ProductsOrder> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PaymentModel>(
      builder: (context, paymentModel, child) {
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
                        'lib/assets/gambar-produk-2.jpg',
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
                            'Aksesoris Set Perhiasan Mutiara Khas Bali',
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
                                'Rp ${paymentModel.formatNumber(paymentModel.productPrice * paymentModel.quantity)}',
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
                                      if (paymentModel.quantity > 1) {
                                        paymentModel.updateQuantity(paymentModel.quantity - 1);
                                      }
                                    },
                                    icon: const Icon(
                                      Icons.remove_circle,
                                      size: 30,
                                      color: Color(0xff3653B0),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    '${paymentModel.quantity}',
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  IconButton(
                                    onPressed: () {
                                      paymentModel.updateQuantity(paymentModel.quantity + 1);
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
