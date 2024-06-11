import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home',
        style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
        centerTitle: true,
        automaticallyImplyLeading: false,
        toolbarHeight: 60,
      backgroundColor: Colors.blue,),
    );
  }
}