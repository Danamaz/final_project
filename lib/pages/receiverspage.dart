import 'package:flutter/material.dart';

class Recipientpage extends StatelessWidget {
  const Recipientpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipients',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: 60,
        backgroundColor: Colors.blue,
      ),
      body: Card(
        child: ListTile(
            onTap: () {},
            title: const Text('Name'),
            subtitle: const Text('Telephone Number'),
            leading: const Icon(Icons.person_2_rounded)),
      ),
    );
  }
}
