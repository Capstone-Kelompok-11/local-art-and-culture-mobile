import 'package:flutter/material.dart';

class SearchHeaderHomepage extends StatelessWidget {
  const SearchHeaderHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        searchBar(context),
        const SizedBox(width: 10),
        Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xff768DD5),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(
            Icons.filter_list,
            color: Colors.white,
            size: 25,
          ),
        ),
      ],
    );
  }

  Widget searchBar(BuildContext context) {
    return Container(
      width: 320,
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
                  hintStyle: TextStyle(color: Color(0xffB3B3B3))),
            ),
          ),
        ],
      ),
    );
  }
}
