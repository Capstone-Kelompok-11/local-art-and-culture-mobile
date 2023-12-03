import 'package:flutter/material.dart';

class ProfileContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            child: Text(
              'Profile',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF1A1A1A),
                fontSize: 20,
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.w600,
                height: 0.07,
              ),
            ),
          ),
          const SizedBox(height: 32),
          SizedBox(
            width: 345, // Ubah lebar sesuai yang diinginkan
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/80x80"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 45),
                const Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 58,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 345,
                            child: Text(
                              'Abiagel Anjayebew',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 24,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w700,
                                height: 0.06,
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          SizedBox(
                            width: 345,
                            child: Text(
                              'Abigael12345@gmaiil.com',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 12,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w500,
                                height: 0.12,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
