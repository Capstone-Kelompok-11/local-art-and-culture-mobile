import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_art_and_culture/src/feature/home%20page/src/screen_home_page.dart';

class SearchHeaderBar extends StatefulWidget {
  const SearchHeaderBar({Key? key}) : super(key: key);

  @override
  State<SearchHeaderBar> createState() => _SearchHeaderBarState();
}

class _SearchHeaderBarState extends State<SearchHeaderBar> {
  String? selectedFilter;

  void _showFilterDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 280,
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.clear_sharp,
                      size: 24,
                    ),
                  ),
                  Text(
                    'Filter',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              _buildFilterOption('Paling Banyak Disukai'),
              _buildFilterOption('Terbaru'),
            ],
          ),
        );
      },
    );
  }

  Widget _buildFilterOption(String optionText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          optionText,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Radio(
          value: optionText,
          groupValue: selectedFilter,
          onChanged: (value) {
            setState(() {
              selectedFilter = value as String?;
            });
          },
          activeColor: Color.fromARGB(255, 0, 131, 11),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyHomePage(),
                ),
              );
            },
            child: const Icon(
              Icons.keyboard_backspace_rounded,
              size: 25,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        searchBar(context),
        const SizedBox(width: 10),
        Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xffF3B502),
            borderRadius: BorderRadius.circular(12),
          ),
          child: GestureDetector(
            onTap: () {
              _showFilterDialog(context);
            },
            child: const Icon(
              Icons.filter_list,
              color: Colors.white,
              size: 25,
            ),
          ),
        ),
      ],
    );
  }

  Widget searchBar(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(153, 153, 153, 0.25),
            spreadRadius: 1,
            blurRadius: 8,
          )
        ],
      ),
      child: const Row(
        children: [
          Icon(Icons.search, color: Color(0xffB3B3B3)),
          SizedBox(width: 8),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Cari di Lokasani',
                  hintStyle: TextStyle(
                      color: Color(0xffB3B3B3),
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
            ),
          ),
        ],
      ),
    );
  }
}
