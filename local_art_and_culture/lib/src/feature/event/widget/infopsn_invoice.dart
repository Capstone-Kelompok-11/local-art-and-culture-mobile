import 'package:flutter/material.dart';

class InfopsnInvoice extends StatelessWidget {
  const InfopsnInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331,
      height: 160,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                'Info Pesanan',
                style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontSize: 18,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pembelian",
                  style: TextStyle(
                    color: Color(0xFF162146),
                    fontSize: 12,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Jumlah",
                  style: TextStyle(
                    color: Color(0xFF162146),
                    fontSize: 12,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Harga",
                  style: TextStyle(
                    color: Color(0xFF162146),
                    fontSize: 12,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: Container(
              width: 283,
              height: 38,
              color: const Color(0xFFEBEEF9),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 1,
                        ),
                        // Text(
                        //   "Jak-japan Matsuri 2023 \nDay 1",
                        //   style: TextStyle(
                        //     color: Color(0xFF3653B0),
                        //     fontSize: 10,
                        //     fontFamily: 'Plus Jakarta Sans',
                        //     fontWeight: FontWeight.w400,
                        //   ),
                        // ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Alkafest VIP',
                                style: TextStyle(
                                  color: Color(0xFF3653B0),
                                  fontSize: 10,
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      "x1",
                      style: TextStyle(
                        color: Color(0xFF3653B0),
                        fontSize: 10,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Rp.82.000",
                      style: TextStyle(
                        color: Color(0xFF3653B0),
                        fontSize: 10,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 1,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Pembayaran',
                  style: TextStyle(
                    color: Color(0xFF162146),
                    fontSize: 12,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Rp 208.000',
                  style: TextStyle(
                    color: Color(0xFF162146),
                    fontSize: 12,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
