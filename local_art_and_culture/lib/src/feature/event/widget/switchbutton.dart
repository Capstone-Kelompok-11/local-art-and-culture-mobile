import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 20, // Set the width of the switch
              child: Switch(
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                },
                activeColor: Colors.green, // Set the active color
                activeTrackColor:
                    Colors.greenAccent, // Set the active track color
                inactiveThumbColor: Colors.grey, // Set the inactive thumb color
                inactiveTrackColor: Colors.white
                    .withOpacity(0.5), // Set the inactive track color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
