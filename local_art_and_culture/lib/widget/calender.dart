import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomCalendar extends StatelessWidget {
  const CustomCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String month = DateFormat.MMMM().format(now);
    String tahun = DateFormat.y().format(now);

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
                width: 35,
                height: 35,
                padding: const EdgeInsets.all(3),
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
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                _buildDayContainer(
                    'Sen', now.subtract(const Duration(days: 6))),
                _buildDayContainer(
                    'Sel', now.subtract(const Duration(days: 5))),
                _buildDayContainer(
                    'Rab', now.subtract(const Duration(days: 4))),
                _buildDayContainer(
                    'Kam', now.subtract(const Duration(days: 3))),
                _buildDayContainer(
                    'Jum', now.subtract(const Duration(days: 2))),
                _buildDayContainer(
                    'Sab', now.subtract(const Duration(days: 1))),
                _buildDayContainer('Min', now),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDayContainer(String day, DateTime date) {
    Color? dateColor;

    if (date.weekday == DateTime.saturday && date.day == 2) {
      // Memeriksa hari Sabtu dan tanggalnya adalah 2
      dateColor = const Color(0xFF7EB3A6);
    } else if (date.weekday == DateTime.tuesday) {
      dateColor = const Color(0xFFF3B1A5);
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
              Container(
                width: 25,
                height: 25,
                decoration: dateColor != null &&
                        (date.weekday == DateTime.tuesday ||
                            (date.weekday == DateTime.saturday &&
                                date.day == 2))
                    ? BoxDecoration(
                        color: dateColor,
                        shape: BoxShape.circle,
                      )
                    : null,
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
            ],
          ),
        ],
      ),
    );
  }
}
