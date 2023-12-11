import 'package:flutter/material.dart';

class EventAppbar extends StatelessWidget {
  const EventAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
                icon: const Padding(
                  padding: EdgeInsets.only(right: 1.0), // Adjust the left padding as needed
                  child: Icon(Icons.arrow_back),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              // Search bar
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                      spreadRadius: 15,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      // filled: true,
                      fillColor: Color.fromARGB(255, 201, 192, 192),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0), 
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
              margin: const EdgeInsets.only(bottom: 3.0),
              decoration: BoxDecoration(
                color: Colors.blue, // Warna latar belakang
                borderRadius: BorderRadius.circular(14.0), 
              ),
              child: IconButton(
                icon: const Icon(Icons.filter_list),
                onPressed: () {
                  Navigator.pop(context);
                },
                color: const Color.fromARGB(255, 255, 255, 255), // Warna ikon
              ),
            )
            ],
    );
  }
}