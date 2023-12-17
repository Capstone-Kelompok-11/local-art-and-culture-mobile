import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListTileChat extends StatelessWidget {
  const ListTileChat(
      {super.key,
      required this.name,
      required this.image,
      required this.message,
      required this.time,
      required this.isMessageRead,
      required this.unreadMessageCount});

  final String name;
  final String image;
  final String message;
  final String time;
  final bool isMessageRead;
  final int unreadMessageCount;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 24,
        backgroundImage: AssetImage(image),
      ),
      title: Text(
        name,
        style: GoogleFonts.plusJakartaSans(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        message,
        style: GoogleFonts.plusJakartaSans(
            color: const Color(0xff999999),
            fontSize: 12,
            fontWeight: FontWeight.w400),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            time,
            style: GoogleFonts.plusJakartaSans(
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
          ),
          if (isMessageRead == false)
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: const Color(0xff3653B0),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  unreadMessageCount.toString(),
                  style: GoogleFonts.plusJakartaSans(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
