import 'package:flutter/material.dart';
import 'package:final_project/itemcard.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  final List<String> items = [
    'Sneaker',
    'Hand Bag',
    'Straight Dress',
    'Jacket',
    'Heel Shoe',
    'Cosmetics',
    'Cleansing Items',
    'Ordinary SkinCare',
    'Yogurt',
    'Onga Spicy',
    'Lemon',
    'Pepsi Drink',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Catalog',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.black,
                letterSpacing: 1,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search_outlined),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText: 'Search',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(right: 10),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ItemCard(
                      itemImage: 'assets/${index + 1}.png',
                      itemName: items[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
