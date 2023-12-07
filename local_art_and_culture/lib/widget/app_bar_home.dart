import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomContainer extends StatelessWidget {
  final String profileImageUrl;
  final String greetingText;
  final String locationText;

  const CustomContainer({
    Key? key,
    required this.profileImageUrl,
    required this.greetingText,
    required this.locationText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Container(
      width: 345,
      height: 46,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
=======
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 2,
      leading: const CircleAvatar(
        backgroundImage: AssetImage('lib/assets/foto.jpg'),
        radius:
            1, // Sesuaikan dengan setengah dari width atau height yang diinginkan
        backgroundColor: Colors.transparent, // Hapus jika tidak perlu
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
>>>>>>> develop
        children: [
          Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 32,
                  height: 32,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage(profileImageUrl),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              greetingText,
                              style: const TextStyle(
                                color: Color(0xFF3653B0),
                                fontSize: 16,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w700,
                                height: 0.09,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFF3B502),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              'Surabaya',
                              style: TextStyle(
                                color: Color(0xFF5F5F5F),
                                fontSize: 12,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w400,
                                height: 0.12,
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
          // Additional Containers
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  // Action for bell icon
                },
                icon: SvgPicture.asset('assets/svg/bell-ring.svg'),
                iconSize: 24,
              ),
              const SizedBox(width: 16),
              IconButton(
                onPressed: () {
                  // Action for chat icon
                },
                icon: SvgPicture.asset('assets/svg/chat-processing.svg'),
                iconSize: 24,
              ),
              const SizedBox(width: 16),
              IconButton(
                onPressed: () {
                  // Action for shopping cart icon
                },
                icon: SvgPicture.asset('assets/svg/shopping_cart.svg'),
                iconSize: 24,
              ),
            ],
          ),
        ],
      ),
<<<<<<< HEAD
=======
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            'lib/assets/svg/bell-ring.svg',
            color: Colors.black,
          ),
          onPressed: () {
            // Aksi ketika ikon notifikasi ditekan
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.chat_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            // Aksi ketika ikon chat ditekan
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
          onPressed: () {
            // Aksi ketika ikon keranjang belanja ditekan
          },
        ),
      ],
>>>>>>> develop
    );
  }
}
