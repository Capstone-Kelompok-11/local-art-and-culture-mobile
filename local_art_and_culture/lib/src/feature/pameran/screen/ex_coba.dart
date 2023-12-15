import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Voice Against Reason'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ExpandableText(
            "\tVoice Against Reason adalah pameran besar "
            "yang melibatkan 24 perupa dari Australia, "
            "Bangladesh, India, Indonesia, Jepang, "
            "Singapura, Taiwan, Thailand, dan Vietnam.",
            expandText: 'Baca Selengkapnya',
            collapseText: 'Sembunyikan',
            linkColor: Color(0xFF627DCF),
            // expanded: () {
            //   setState(() {
            //     isExpanded = true;
            //   });
            // },
            // collapseOnTextTap: () {
            //   setState(() {
            //     isExpanded = false;
            //   });
            // },
          ),
        ),
        SizedBox(
          height: 8,
        ),
        // You can add additional widgets here
      ],
    );
  }
}
