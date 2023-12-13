import 'package:flutter/material.dart';

class ButtonDetail extends StatefulWidget {
  const ButtonDetail({super.key});

  @override
  State<ButtonDetail> createState() => _ButtonDetailState();
}

class _ButtonDetailState extends State<ButtonDetail> {
  List<String> detail = ["Deskripsi", "Tiket"];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: detail.length,
        itemBuilder: (context, index) => BuildDetail(index),
      ),
    );
  }

  Widget BuildDetail(int index) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        margin: EdgeInsets.only(left: 65),
        child: Column(
          children: <Widget>[
            Text(
              detail[index],
              style: const TextStyle(
                color: Color(0xFF162146),
                fontSize: 16,
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              height: 2,
              width: 38,
              color: Color(0xFF3653B0),
            )
          ],
        ),
      ),
    );
  }
}