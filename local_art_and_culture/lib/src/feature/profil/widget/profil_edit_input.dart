import 'package:flutter/material.dart';

class ProfileInputWidget extends StatelessWidget {
  final String label;
  final List<TextEditingController> controllers;

  const ProfileInputWidget({
    Key? key,
    required this.label,
    required this.controllers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 81,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  label,
                  style: const TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 14,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: ShapeDecoration(
              color: const Color(0xFFF2F2F2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Row(
              children: controllers.map((controller) {
                return Expanded(
                  child: TextFormField(
                    controller: controller,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
