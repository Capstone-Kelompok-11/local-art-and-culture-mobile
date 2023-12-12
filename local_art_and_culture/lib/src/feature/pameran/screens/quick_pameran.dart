import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/pameran/widgets/pameran_card.dart';
import 'package:local_art_and_culture/src/feature/pameran/widgets/quick_screen_appbar.dart';

class QuickPameransScreen extends StatefulWidget {
  const QuickPameransScreen({super.key});

  @override
  State<QuickPameransScreen> createState() => _QuickPameransScreenState();
}

class _QuickPameransScreenState extends State<QuickPameransScreen> {
  @override
  Widget build(BuildContext context) {
    var pamerans;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const QuickScreenAppbar(),
                const SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) => PameranCard(
                    pameran: pamerans[index],
                  ),
                  itemCount: pamerans.length,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
