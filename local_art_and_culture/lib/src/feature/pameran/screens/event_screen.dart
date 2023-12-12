import 'package:flutter/material.dart';
import 'package:local_art_and_culture/components/search_bar.dart';
import 'package:local_art_and_culture/src/feature/pameran/widgets/categories.dart';
import 'package:local_art_and_culture/src/feature/pameran/widgets/quick_and_list.dart';

class EvenScreen extends StatefulWidget {
  const EvenScreen({super.key});

  @override
  State<EvenScreen> createState() => _EvenScreenState();
}

class _EvenScreenState extends State<EvenScreen> {
  String currentCat = "Pameran";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SearchHeader(),
                const SizedBox(height: 10),
                const SizedBox(height: 20),
                Categories(currentCat: currentCat),
                const SizedBox(height: 20),
                const QuickAndFastList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
