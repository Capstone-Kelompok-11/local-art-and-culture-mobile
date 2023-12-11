import 'package:flutter/material.dart';

class InfopsnInvoice extends StatelessWidget {
  const InfopsnInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331,
      height: 238,
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
              horizontal: 1.0,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1.0),
            child: Container(
              width: 283,
              height: 38,
              color: const Color(0xFFEBEEF9),
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
                              text: 'Selasa ',
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
                    width: 80,
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
                    width: 30,
                  ),
                  Text(
                    "Rp.50.000",
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
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1.0),
            child: Container(
              width: 345,
              height: 24,
              color: const Color(0xFFEBEEF9),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 1,
                      ),
                      Text(
                        "Poster By Teratai",
                        style: TextStyle(
                          color: Color(0xFF3653B0),
                          fontSize: 10,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 34,
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
                    width: 30,
                  ),
                  Text(
                    "Rp.150.000",
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
          const SizedBox(
            height: 5,
          ),
          
          const SizedBox(
            height: 5,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                'Rp 293.000',
                style: TextStyle(
                  color: Color(0xFF162146),
                  fontSize: 12,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
