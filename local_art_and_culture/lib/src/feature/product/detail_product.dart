import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({Key? key}) : super(key: key);

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  bool isExpanded = false;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          productImage(),
          const SizedBox(height: 10),
          const Divider(
            color: Color(0xffE6E6E6),
            thickness: 1,
          ),
          productStore(),
          const Divider(
            color: Color(0xffE6E6E6),
            thickness: 1,
          ),
          descriptionProduct(),
          const Divider(
            color: Color(0xffE6E6E6),
            thickness: 1,
          ),
          reviewProduct(),
        ],
      ),
    );
  }

  Widget productImage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            const Image(image: AssetImage('lib/assets/gambar-produk-2.jpg')),
            Positioned(
              top: 23,
              left: 20,
              child: IconButton(
                icon: const Icon(
                  Icons.keyboard_backspace_rounded,
                  color: Colors.black,
                  size: 28.0,
                ),
                onPressed: () {},
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      isFavorite
                          ? Icons.favorite_rounded
                          : Icons.favorite_border_rounded,
                      color: isFavorite ? Colors.red : const Color(0xff999999),
                      size: 28.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text('Baju Kebaya Wanita Pink Full Set Lokal',
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 18, fontWeight: FontWeight.w600)),
              const SizedBox(height: 8),
              Text('Rp 180.000',
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff3653B0))),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(
                    Icons.star_rounded,
                    color: Color(0xfff3b502),
                    size: 17.0,
                  ),
                  const SizedBox(width: 4.0),
                  RichText(
                    text: TextSpan(
                      text: '4.9',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      children: [
                        const WidgetSpan(
                          child: SizedBox(width: 10.0),
                        ),
                        TextSpan(
                          text: '153 Terjual',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff999999),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget productStore() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: const Image(
              image: AssetImage('lib/assets/logo-store.jpg'),
              width: 40,
              height: 40,
            ),
          ),
          const SizedBox(width: 17),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Louis Vuitton',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                  )),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Color(0xff666666),
                    size: 17.0,
                  ),
                  const SizedBox(width: 4.0),
                  Text('Jogjakarta',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff666666),
                      )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget descriptionProduct() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Deskripsi Produk',
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 18, fontWeight: FontWeight.w700)),
              const SizedBox(height: 8),
              Text(
                'Lorem ipsum dolor sit amet consectetur. Amet varius turpis habitasse tempus. Eros eu aliquet enim rutrum etiam venenatis dolor tortor.',
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff666666)),
                maxLines: isExpanded ? null : 3,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              InkWell(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Text(isExpanded ? 'Baca Selengkapnya' : 'Sembunyikan',
                    style: GoogleFonts.plusJakartaSans(
                        color: const Color(0xff637DCF),
                        fontWeight: FontWeight.w600,
                        fontSize: 16)),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget reviewProduct() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Penilaian Produk',
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 18, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(
                        Icons.star_rounded,
                        color: Color(0xfff3b502),
                        size: 17.0,
                      ),
                      const SizedBox(width: 4.0),
                      Text('4.9 ',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 14, fontWeight: FontWeight.w400)),
                      const SizedBox(width: 5),
                      Text('(60 ulasan)',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff999999))),
                    ],
                  ),
                ],
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('Lihat semua',
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff3653B0))),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: const Image(
                  image: AssetImage('lib/assets/logo-store.jpg'),
                  width: 25,
                  height: 25,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('John Wick',
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                    const SizedBox(height: 5),
                    Row(
                      children: List.generate(
                        4,
                        (index) => const Icon(
                          Icons.star_rounded,
                          color: Color(0xfff3b502),
                          size: 23.0,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text('Ukuran: All Size',
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffB3B3B3))),
                    const SizedBox(height: 8),
                    Text(
                        'Mantap banget kebayanya, warnanya elegan. Muat juga diaku ukurannya pas sekali. barang sesuai gambar yang tertera',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 21 / 16,
                        )),
                    const SizedBox(height: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: const Image(
                        image: AssetImage('lib/assets/gambar-produk-2.jpg'),
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
