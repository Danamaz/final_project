import 'package:final_project/pages/homepage.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 100, left: 15, right: 15 ),
        child: Column(
          children: <Widget>[
            const Text('Register Your Details', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
            const SizedBox(height: 70),
            name(),
            const SizedBox(height: 30),
            emailfield(),
            const SizedBox(height: 30),
            phonenumber(),
            const SizedBox(height: 70),
            button()
          ],),),);}


 Widget name(){
  return TextFormField(
    decoration: const InputDecoration(
      labelText: 'Name',
      prefixIcon: Icon(Icons.person_outline),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.zero
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.zero
      ),), );
      }      


 Widget emailfield(){
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: const InputDecoration(
      labelText: 'email address',
      prefixIcon: Icon(Icons.email_outlined),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.zero
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.zero
      ),),);
      }  

 Widget phonenumber(){
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: const InputDecoration(
      labelText: 'phone number',
      prefixIcon: Icon(Icons.phone_outlined),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.zero
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.zero
      ),),);
      }       

 Widget button(){
    return ElevatedButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
    }, 
    child:const Text('Sign Up', style: TextStyle(fontSize: 25),));
  }     
}