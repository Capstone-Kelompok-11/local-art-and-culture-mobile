import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_art_and_culture/components/invoice_product.dart';
import 'package:local_art_and_culture/models/payment_model.dart';
import 'package:provider/provider.dart';

class PaymentNavigationBar extends StatefulWidget {
  const PaymentNavigationBar({super.key});

  @override
  State<PaymentNavigationBar> createState() => _PaymentNavigationBarState();
}

class _PaymentNavigationBarState extends State<PaymentNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PaymentModel>(
      builder: (context, paymentModel, child) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x12121233),
                blurRadius: 10,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Pembayaran',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff666666),
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          'Rp ${paymentModel.formatNumber(paymentModel.totalPayment)}',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff3653B0),
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const InvoiceProduct()),
                            (route) => false);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 14.0, horizontal: 32.0),
                        backgroundColor: const Color(0xff3653B0),
                      ),
                      child: Text(
                        'Bayar Sekarang',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
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
