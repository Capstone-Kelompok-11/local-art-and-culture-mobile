import 'package:flutter/material.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return searchBar(context);
  }

  Widget searchBar(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.87,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(153, 153, 153, 0.25),
            spreadRadius: 0,
            blurRadius: 3,
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
                hintText: 'Cari pesan/penjual',
                hintStyle: TextStyle(
                  color: Color(0xffB3B3B3),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
