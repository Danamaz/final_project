import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String itemName;
  final String itemImage;

  const ItemCard({
    super.key,
    required this.itemImage,
    required this.itemName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 300,
      // height: 120,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipOval(
            child: Image.asset(
              itemImage,
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                itemName,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Expiry Dates',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
