import 'package:flutter/material.dart';
//import 'package:final_project/itemcard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  // final List<String> items = [
  //   'Sneaker',
  //   'Hand Bag',
  //   'Straight Dress',
  //   'Jacket',
  //   'Heel Shoe',
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        toolbarHeight: 60,
        backgroundColor: Colors.blue,
      ),
      // body: ListView.builder(
      //   padding: const EdgeInsets.only(right: 10),
      //   itemCount: items.length,
      //   itemBuilder: (context, index) {
      //     return ItemCard(
      //         itemImage: 'assets/${index + 1}.png', itemName: items[index]);
      //   },
      // ),
    );
  }
}
