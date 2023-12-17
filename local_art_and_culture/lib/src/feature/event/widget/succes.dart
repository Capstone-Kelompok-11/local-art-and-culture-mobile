import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuccesInvoice extends StatefulWidget {
  const SuccesInvoice({super.key});

  @override
  State<SuccesInvoice> createState() => _SuccesInvoiceState();
}

class _SuccesInvoiceState extends State<SuccesInvoice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331,
      height: 218,
      padding: const EdgeInsets.only(
        top: 24,
        left: 24,
        right: 24,
        bottom: 16,
      ),
      child: Column(
        children: [
          Center(
            child: Column(
              children: [
                SvgPicture.asset("assets/svg/success.svg"),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Terima Kasih !",
                  style: TextStyle(
                    color: Color(0xFF3653B0),
                    fontSize: 20,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  "Pembayaran Kamu Berhasil",
                  style: TextStyle(
                    color: Color(0xFF999999),
                    fontSize: 14,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Nomor Invoice',
                style: TextStyle(
                  color: Color(0xFF162146),
                  fontSize: 12,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Tanggal Transaksi',
                style: TextStyle(
                  color: Color(0xFF162146),
                  fontSize: 12,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '12345678',
                style: TextStyle(
                  color: Color(0xFF3653B0),
                  fontSize: 10,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                '12 Desember 2023',
                style: TextStyle(
                  color: Color(0xFF3653B0),
                  fontSize: 10,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
