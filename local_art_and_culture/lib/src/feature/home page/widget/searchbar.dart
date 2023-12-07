import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final Widget leadingIcon;
  final Function()? onLeadingTap;
  final Function()? onTrailingTap;

  const CustomSearchBar({
    Key? key,
    required this.leadingIcon,
    this.onLeadingTap,
    this.onTrailingTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 293,
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F999999),
            blurRadius: 8,
            offset: Offset(0, 0),
            spreadRadius: 1,
          )
        ],
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: onLeadingTap,
            child: leadingIcon,
          ),
          const SizedBox(
              width: 10), // Add some spacing between icon and text field
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          // Add trailingIcon here if needed
        ],
      ),
    );
  }
}
