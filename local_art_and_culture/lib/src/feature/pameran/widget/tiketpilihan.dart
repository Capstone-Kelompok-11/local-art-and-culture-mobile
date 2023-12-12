import 'package:flutter/material.dart';

class TiketPilihan extends StatelessWidget {
  final String imagePath;
  final String title;
  final String date;
  final String category;
  final String harga;

  const TiketPilihan({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.category,
    required this.date,
    required this.harga,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 394,
      height: 272,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Tiket",
                style: TextStyle(
                  color: Color(0xFF0C1226),
                  fontSize: 20,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    bottom: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        imagePath,
                        width: 83,
                        height: 91,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 100), // Adjust the left padding as needed
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$title",
                          style: const TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 14,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset("assets/img/label_important.png"),
                            Text(
                              "$category",
                              style: const TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 10,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset("assets/img/access_alarm1.png"),
                            Text(
                              "$date",
                              style: const TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 10,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Rp.$harga",
                              style: const TextStyle(
                                color: Color(0xFF3653B0),
                                fontSize: 18,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            // SizedBox(
                            //   height: 24,
                            //   width: 24,
                            //   child: OutlinedButton(
                            //       onPressed: () {},
                            //       child: Icon(
                            //         Icons.remove,
                            //         color: Colors.black,
                            //       )),
                            // )
                            SizedBox(width: 60),
                            ButtonPlusMin()
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}

class ButtonPlusMin extends StatefulWidget {
  const ButtonPlusMin({Key? key}) : super(key: key);

  @override
  _ButtonPlusMinState createState() => _ButtonPlusMinState();
}

class _ButtonPlusMinState extends State<ButtonPlusMin> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              // Add functionality to decrement the number
              if (number > 1) {
                number--;
              }
            });
          },
          child: Container(
            height: 24,
            width: 24,
            child: Image.asset("assets/img/mintiket.png"),
          ),
        ),
        SizedBox(width: 8), // Provide some spacing between buttons
        Text(
          '$number', // Display the current number
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(width: 8), // Provide some spacing between buttons
        GestureDetector(
          onTap: () {
            setState(() {
              // Add functionality to increment the number
              number++;
            });
          },
          child: Container(
            height: 24,
            width: 24,
            child: Image.asset("assets/img/plustiket.png"),
          ),
        ),
      ],
    );
  }
}