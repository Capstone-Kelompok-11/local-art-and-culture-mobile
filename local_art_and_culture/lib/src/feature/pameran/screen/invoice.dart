import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:local_art_and_culture/src/feature/pameran/screen/home_screen.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/appbarinvoice.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/infopengunjung_invoice.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/infopsn_invoice.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/invoice_qr.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/mp_invoice.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/succes.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/tiket_invoice.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 493,
          height: 1451,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            color: Color(0xFF91A2D4),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              const AppBarInvoice(),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: 331,
                height: 1239.15,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Column(
                  children: [
                    const SuccesInvoice(),
                    SizedBox(
                      height: 8,
                      child: Column(
                        children: [
                          SvgPicture.asset("assets/svg/Line 1.svg"),
                        ],
                      ),
                    ),
                    const TiketInvoice(
                        imagePath: "assets/img/orasis.jpg",
                        title: "Museum Macan\n",
                        location: "Museum Macan\n",
                        date: "Setiap Hari"),
                    const InfoPengunjung(),
                    const InfopsnInvoice(),
                    const InvoiceMP(),
                    SizedBox(
                      height: 8,
                      child: Column(
                        children: [
                          SvgPicture.asset("assets/svg/Line 1.svg"),
                        ],
                      ),
                    ),
                    const InvoiceQR()
                  ],
                ),
              ),
              const SizedBox(
                height: 39,
              ),
              Container(
                width: 345,
                height: 45,
                decoration: ShapeDecoration(
                  color: const Color(0xFF3653B0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                        (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3653B0)),
                  child: const Text(
                    'Lanjut Berbelanja',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w600,
                      height: 0.11,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DashedLine extends StatelessWidget {
  final double height;
  final Color color;

  DashedLine({this.height = 1.0, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _DashedLinePainter(height: height, color: color),
    );
  }
}

class _DashedLinePainter extends CustomPainter {
  final double height;
  final Color color;

  _DashedLinePainter({this.height = 1.0, this.color = Colors.black});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = height
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.square;

    const dashWidth = 5;
    const dashSpace = 5;

    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
