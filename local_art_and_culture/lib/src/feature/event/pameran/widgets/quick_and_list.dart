import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/event/pameran/models/data_pameran.dart';
import 'package:local_art_and_culture/src/feature/event/pameran/screens/detail_pameran.dart';


class QuickAndFastList extends StatelessWidget {
  const QuickAndFastList({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: const Color.fromARGB(255, 255, 255, 255),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.7),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            foods.length,
            (index) => GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(pameran: foods[index]),
                ),
              ),
              child: Card(
                margin: const EdgeInsets.only(right: 10, bottom: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 3,
                child: Container(
                  width: MediaQuery.of(context).size.width - 20,
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(foods[index].image),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Add your action for "Event" button
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                  minimumSize: Size(44, 19),
                                  
                                ),
                                child: Text("Event",style: TextStyle(fontSize: 12, color: Colors.white),),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Add your action for "Berbayar" button
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.green,
                                  minimumSize: Size(44, 19),
                                ),
                                child: Text("Berbayar", style: TextStyle(fontSize: 12, color: Colors.white),),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Text(
                            foods[index].name,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "${foods[index].IDR} K From IDR |",
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              const Text(
                                " · ",
                                style: TextStyle(color: Colors.grey),
                              ),
                              const Icon(
                                Icons.location_on,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Text(
                                "${foods[index].map} Jl",
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                        top: 160,
                        right: 1,
                        child: IconButton(
                          onPressed: () {},
                          style: IconButton.styleFrom(
                            fixedSize: const Size(5, 5),
                          ),
                          iconSize: 15,
                          icon: const Icon(Icons.arrow_right),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
