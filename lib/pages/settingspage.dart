import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue,
          toolbarHeight: 60,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: ListTile(
                    onTap: () {},
                    title: const Text('Account'),
                    leading: const Icon(Icons.person_2_rounded)),
              ),
              Card(
                child: ListTile(
                    onTap: () {},
                    title: const Text('Apperance'),
                    leading: const Icon(Icons.brightness_6)),
              ),
              Card(
                child: ListTile(
                    onTap: () {},
                    title: const Text('Notification'),
                    leading: const Icon(Icons.notification_important_outlined)),
              ),
            ],
          ),
        ));
  }
}
