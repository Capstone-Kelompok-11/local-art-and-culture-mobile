import 'package:flutter/material.dart';

class ProfileContainer extends StatelessWidget {
  final String profileName;
  final String email;
  final String imageUrl;
  final double containerWidth;

  const ProfileContainer({
    Key? key,
    required this.profileName,
    required this.email,
    required this.imageUrl,
    this.containerWidth = 345, // lebar default
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
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
            width: containerWidth,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 45),
                SizedBox(
                  width: containerWidth,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: containerWidth,
                        height: 58,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: containerWidth,
                              child: Text(
                                profileName,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Color(0xFF1A1A1A),
                                  fontSize: 24,
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontWeight: FontWeight.w700,
                                  height: 0.06,
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            SizedBox(
                              width: containerWidth,
                              child: Text(
                                email,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 12,
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
