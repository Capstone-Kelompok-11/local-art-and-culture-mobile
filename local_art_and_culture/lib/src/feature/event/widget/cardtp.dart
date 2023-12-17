import 'package:flutter/material.dart';

class CardTP extends StatelessWidget {
  final String imagePath;
  final String title;

  final String harga;

  const CardTP({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.harga,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F999999),
            blurRadius: 8,
            offset: Offset(0, 0),
            spreadRadius: 1,
          )
        ],
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const Row(
            children: [
              SizedBox(
                width: 20,
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
                        width: 64,
                        height: 70,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 80), // Adjust the left padding as needed
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$title",
                          style: const TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 14,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Rp.$harga",
                              style: const TextStyle(
                                color: Color(0xFFB3B3B3),
                                fontSize: 10,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w400,
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
                          ],
                        ),
                        SizedBox(height: 12),
                        ButtonPlusMin()
                      ],
                    ),
                  ),
                ],
              ),
            ],
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
            height: 15,
            width: 15,
            child: Image.asset("assets/png/mintiket.png"),
          ),
        ),
        SizedBox(width: 8), // Provide some spacing between buttons
        Text(
          '$number', // Display the current number
          style: TextStyle(fontSize: 12),
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
            height: 15,
            width: 15,
            child: Image.asset("assets/png/plustiket.png"),
          ),
        ),
      ],
    );
  }
}
