import 'package:flutter/material.dart';

class CustomCalendar extends StatelessWidget {
  final String month;
  final String tahun;
  final String weekOne;
  final String weekTwo;
  final String weekThree;
  final String weekFour;
  final String weekFive;
  final String weekSix;

  const CustomCalendar({
    Key? key,
    required this.month,
    required this.tahun,
    required this.weekOne,
    required this.weekTwo,
    required this.weekThree,
    required this.weekFour,
    required this.weekFive,
    required this.weekSix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                child: const Center(
                  child: Icon(
                    Icons.navigate_next_rounded,
                    color: Colors.white,
                    size: 24,
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
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: [
              _buildDayContainer('Min', '31'),
              _buildDayContainer('Sen', '1'),
              _buildDayContainer('Sel', '2'),
              _buildDayContainer('Rab', '3'),
              _buildDayContainer('Kam', '4'),
              _buildDayContainer('Jum', '5'),
              _buildDayContainer('Sab', '6'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDayContainer(String day, String date) {
    Color? dateColor;

    if (date == '5') {
      dateColor = const Color(0xFF7EB3A6);
    } else if (date == '2') {
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
                decoration: dateColor != null && (date == '2' || date == '5')
                    ? BoxDecoration(
                        color: dateColor,
                        shape: BoxShape.circle,
                      )
                    : null,
                child: Center(
                  child: Text(
                    date,
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
