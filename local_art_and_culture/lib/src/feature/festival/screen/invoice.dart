import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:local_art_and_culture/src/feature/festival/screen/home_screen.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/appbarinvoice.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/infopengunjung_invoice.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/infopsn_invoice.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/invoice_qr.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/mp_invoice.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/succes.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/ticket_invoice.dart';

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
          width: 393,
          height: 1451,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.07, -1.00),
              end: Alignment(0.07, 1),
              colors: [Color(0xFF3653B0), Color(0x003653B0)],
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              AppBarInvoice(),
              SizedBox(
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
                    SuccesInvoice(),
                    SizedBox(
                      height: 8,
                      child: Column(
                        children: [
                          SvgPicture.asset("assets/svg/Line 1.svg"),
                        ],
                      ),
                    ),
                    const TiketInvoice(
                        imagePath: "assets/png/gambar dp.png",
                        title: "Jak-Japan Matsuri 2023\n - Closing Ceremony",
                        location: "Gambir Expo - Jiexpo \nKemayoran",
                        date: "18 - 19 Nov 2023"),
                    InfoPengunjung(),
                    InfopsnInvoice(),
                    InvoiceMP(),
                    SizedBox(
                      height: 8,
                      child: Column(
                        children: [
                          SvgPicture.asset("assets/svg/Line 1.svg"),
                        ],
                      ),
                    ),
                    InvoiceQR()
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
                  color: Color(0xFF3653B0),
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
                            builder: (context) => const HomeScreenFstv()),
                        (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF3653B0)),
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

    final dashWidth = 5;
    final dashSpace = 5;

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
