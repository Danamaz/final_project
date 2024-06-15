//import 'package:final_project/firebase_options.dart';
import 'package:final_project/screens/loginpage.dart';
import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'package:get_storage/get_storage.dart';

void main() {
  // // final WidgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // await GetStorage.init();

  // //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  // // then(
  // //   (FirebaseApp value) => Get.put(AuthenticationRepository()),
  // // );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.indigo,
        body: Center(
          child: Text(
            'Splash Screen',
            style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}
