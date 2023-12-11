import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomCalendar extends StatelessWidget {
  const CustomCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String month = DateFormat.MMMM().format(now);
    String tahun = DateFormat.y().format(now);

    DateTime startOfWeek = now.subtract(Duration(days: now.weekday - 1));

    // Contoh beberapa tanggal yang dipilih dari API
    List<DateTime> apiDates = [
      DateTime(DateTime.now().year, DateTime.now().month,
          11), // Tambahkan tanggal 11
      DateTime(DateTime.now().year, DateTime.now().month,
          17), // Tambahkan tanggal 17
    ];

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F999999),
            blurRadius: 8,
            offset: Offset(0, 0),
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                '#SaveTheDate!',
                style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontSize: 20,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w600,
                  height: 0.09,
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(1),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0xFFED8A77),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      // Tambahkan logika navigasi halaman di sini
                    },
                    icon: const Icon(
                      Icons.navigate_next_rounded,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$month $tahun',
                  style: const TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 20,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w700,
                    height: 0.07,
                  ),
                ),
                const SizedBox(height: 25),
                const Text(
                  ' Acara menarikmu yang ada di minggu ini!',
                  style: TextStyle(
                    color: Color(0xFFB3B3B3),
                    fontSize: 12,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w400,
                    height: 0.12,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                7,
                (index) {
                  DateTime currentDate = startOfWeek.add(Duration(days: index));
                  String day = DateFormat.E().format(currentDate);

                  return _buildDayContainer(
                      day, currentDate, now, apiDates, context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDayContainer(String day, DateTime date, DateTime now,
      List<DateTime> apiDates, BuildContext context) {
    Color? dateColor;

    if (apiDates.any((apiDate) =>
        date.year == apiDate.year &&
        date.month == apiDate.month &&
        date.day == apiDate.day)) {
      dateColor =
          const Color(0xFFED8A77); // Mengubah warna untuk tanggal dari API
    }

    // Tambahkan logika jika tidak ada acara pada minggu ini
    if (apiDates.isEmpty) {
      dateColor = Colors.transparent; // Atau warna lain sesuai kebutuhan
    }

    return SizedBox(
      width: 40,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            day,
            style: const TextStyle(
              color: Color(0xFFB3B3B3),
              fontSize: 14,
              fontFamily: 'Plus Jakarta Sans',
              fontWeight: FontWeight.w500,
              height: 0.11,
            ),
          ),
          const SizedBox(height: 16),
          Stack(
            alignment: Alignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  // Tambahkan logika untuk menampilkan bottom sheet di sini
                  if (dateColor == const Color(0xFFED8A77)) {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return SingleChildScrollView(
                          child: Container(
                            child: Container(
                              width: 393,
                              height: 561,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 32),
                              clipBehavior: Clip.antiAlias,
                              decoration: const ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(24),
                                    topRight: Radius.circular(24),
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    height: 497,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          height: 32,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: double.infinity,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 32,
                                                      height: 32,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: const Stack(
                                                          children: []),
                                                    ),
                                                    const SizedBox(width: 8),
                                                    const Expanded(
                                                      child: SizedBox(
                                                        child: Text(
                                                          'Denah Acara',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 20,
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            height: 0.07,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 28),
                                        Container(
                                          width: 345,
                                          height: 437,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 362,
                                                height: 437,
                                                decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://via.placeholder.com/362x437"),
                                                    fit: BoxFit.fill,
                                                  ),
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
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: dateColor != null
                      ? BoxDecoration(
                          color: dateColor,
                          shape: BoxShape.circle,
                        )
                      : const BoxDecoration(), // Mengisi BoxDecoration kosong jika dateColor adalah null
                  child: Center(
                    child: Text(
                      '${date.day}',
                      style: const TextStyle(
                        color: Color(0xFF1A1A1A),
                        fontSize: 15,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
