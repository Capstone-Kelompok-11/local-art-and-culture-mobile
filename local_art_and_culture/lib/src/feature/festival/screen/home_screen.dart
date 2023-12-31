import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:local_art_and_culture/src/feature/festival/screen/card_rd_Fstv.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/filter_bottomsheet.dart';
import 'package:local_art_and_culture/src/feature/home%20page/src/screen_home_page.dart';

class HomeScreenFstv extends StatefulWidget {
  const HomeScreenFstv({super.key});

  @override
  State<HomeScreenFstv> createState() => _HomeScreenFstvState();
}

class _HomeScreenFstvState extends State<HomeScreenFstv> {
  @override
  Widget build(BuildContext context) {
    // const Padding = EdgeInsets.all(10.0);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyHomePage()),
                            );
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 24,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 8,
                                  offset: const Offset(0, 0))
                            ]),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: "Cari....",
                                prefixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(24.0),
                                    ),
                                    borderSide: BorderSide.none),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        IconButton(
                          onPressed: () {
                            _showFilterBottomSheet(context);
                          },
                          icon: SvgPicture.asset(
                              "assets/svg/Frame 347filter.svg"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CardRDFestival(),
            ],
          ),
        ),
      ),
    );
  }
}

void _showFilterBottomSheet(BuildContext context) async {
  final result = await showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return FestivalFilterBottomSheet();
    },
  );

  // Handle the result from the bottom sheet here
  if (result != null) {
    // ignore: avoid_print
    print('Selected Filters: $result');
    // You can apply filter logic using the selected filters
  }
}
