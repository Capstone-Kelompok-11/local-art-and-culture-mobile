import 'package:flutter/material.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({
    Key? key,
    required this.addressTitle,
    required this.addressType,
    required this.addressOwner,
    required this.phoneNumber,
    required this.address,
    this.onEditPressed,
  }) : super(key: key);

  final String addressTitle;
  final String addressType;
  final String addressOwner;
  final String phoneNumber;
  final String address;
  final VoidCallback? onEditPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      height: 119,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 24,
                height: 24,
                child: const Icon(Icons.location_on),
              ),
              const SizedBox(width: 8),
              Text(
                addressTitle,
                style: const TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 12,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: const Color(0xFFED8A77),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  addressType,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: onEditPressed,
                icon: const Icon(Icons.more_horiz),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            addressOwner,
            style: const TextStyle(
              color: Color(0xFF999999),
              fontSize: 12,
              fontFamily: 'Plus Jakarta Sans',
              fontWeight: FontWeight.w400,
              height: 1.0,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            phoneNumber,
            style: const TextStyle(
              color: Color(0xFF999999),
              fontSize: 12,
              fontFamily: 'Plus Jakarta Sans',
              fontWeight: FontWeight.w400,
              height: 1.0,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            address,
            style: const TextStyle(
              color: Color(0xFF666666),
              fontSize: 12,
              fontFamily: 'Plus Jakarta Sans',
              fontWeight: FontWeight.w500,
              height: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
