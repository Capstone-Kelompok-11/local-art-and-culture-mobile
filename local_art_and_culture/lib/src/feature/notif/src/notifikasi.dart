import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/notif/widget/card_notif.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPageIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentPageIndex = index;
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Stack(children: [
                    Expanded(
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ]),
                ),
                const Expanded(
                  child: SizedBox(
                    child: Text(
                      'Notifikasi',
                      style: TextStyle(
                        color: Color(0xFF1A1A1A),
                        fontSize: 20,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextButton(
                  onPressed: () => _onTabTapped(0),
                  child: Text(
                    'Terbaru',
                    style: TextStyle(
                      color: _currentPageIndex == 0 ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => _onTabTapped(1),
                  child: Text(
                    'Transaksi',
                    style: TextStyle(
                      color: _currentPageIndex == 1 ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => _onTabTapped(2),
                  child: Text(
                    'Info',
                    style: TextStyle(
                      color: _currentPageIndex == 2 ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPageIndex = index;
                  });
                },
                children: <Widget>[
                  // Halaman Terbaru
                  ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return CustomInfoCard(
                        title: 'Info',
                        subtitle: 'Kini Lokasani Hadir dalam Tampilan Baru',
                        time: '$index Jam',
                        description:
                            'Cek tampilan halaman akun lokasani yuk!\nFitur history hadir untuk melihat transaksi terakhirmu. Makin nyaman bertransaksi bersama Lokasani',
                        icon: 'assets/png/icon_info.png',
                      );
                    },
                  ),

                  // Halaman Transaksi (Isi dengan konten yang sesuai)
                  ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return CustomInfoCard(
                        title: 'Info',
                        subtitle: 'Kini Lokasani Hadir dalam Tampilan Baru',
                        time: '$index Jam',
                        description:
                            'Cek tampilan halaman akun lokasani yuk!\nFitur history hadir untuk melihat transaksi terakhirmu. Makin nyaman bertransaksi bersama Lokasani',
                        icon: 'assets/png/icon_info.png',
                      );
                    },
                  ),
                  // Halaman Info (Isi dengan konten yang sesuai)
                  ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return CustomInfoCard(
                        title: 'Info',
                        subtitle: 'Kini Lokasani Hadir dalam Tampilan Baru',
                        time: '$index Jam',
                        description:
                            'Cek tampilan halaman akun lokasani yuk!\nFitur history hadir untuk melihat transaksi terakhirmu. Makin nyaman bertransaksi bersama Lokasani',
                        icon: 'assets/png/icon_info.png',
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
