import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  final double iconSize;
  final Color iconColor;
  final Color backgroundColor;
  final double containerSize;
  final VoidCallback onTap;

  const CustomIconButton({
    Key? key,
    required this.icon,
    this.iconSize = 24,
    this.iconColor = Colors.black,
    this.backgroundColor = const Color(0xFF768DD5),
    this.containerSize = 40,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: containerSize,
        height: containerSize,
        padding: const EdgeInsets.all(8),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Center(
          child: SizedBox(
            width: iconSize,
            height: iconSize,
            child: icon,
          ),
        ),
      ),
    );
  }
}
