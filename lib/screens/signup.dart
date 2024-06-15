import 'package:email_validator/email_validator.dart';
import 'package:final_project/screens/detailpage.dart';
import 'package:final_project/screens/loginpage.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _obscureText = true;
  bool _obscureText2 = true;
  final _formKey = GlobalKey<FormState>();
  String? passwordValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                margin: const EdgeInsets.only(top: 90, left: 15, right: 15),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      const Text(
                        'Sign Up',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      const SizedBox(height: 70),
                      emailfield(),
                      const SizedBox(height: 25),
                      password(),
                      const SizedBox(height: 25),
                      confirm(),
                      const SizedBox(height: 40),
                      button(),
                      const SizedBox(height: 170),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have an account?",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                    child: const Text(
                                      'Login',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline),
                                    ),
                                    onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginPage()),
                                        )))
                          ])
                    ],
                  ),
                ))));
  }

  Widget emailfield() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: 'email address/phone number',
        prefixIcon: Icon(Icons.email_outlined),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.zero),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.zero),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter an email address or phone number';
        } else if (!EmailValidator.validate(value) &&
            !RegExp(r'^\+?\d{10,}$').hasMatch(value)) {
          return 'Please enter a valid email address or phone number';
        }
        return null;
      },
    );
  }

  Widget password() {
    return TextFormField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        labelText: 'password',
        prefixIcon: const Icon(Icons.lock_outlined),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.remove_red_eye_outlined : Icons.remove_red_eye,
            color: Colors.red,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
        focusedBorder:
            const OutlineInputBorder(borderRadius: BorderRadius.zero),
        enabledBorder:
            const OutlineInputBorder(borderRadius: BorderRadius.zero),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a password';
        } else if (value.length < 6) {
          return 'Password must be at least 6 characters long';
        }
        passwordValue = value;
        return null;
      },
    );
  }

  Widget confirm() {
    return TextFormField(
      obscureText: _obscureText2,
      decoration: InputDecoration(
        labelText: 'confirm password',
        prefixIcon: const Icon(Icons.lock_outline),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText2
                ? Icons.remove_red_eye_outlined
                : Icons.remove_red_eye,
            color: Colors.red,
          ),
          onPressed: () {
            setState(() {
              _obscureText2 = !_obscureText2;
            });
          },
        ),
        focusedBorder:
            const OutlineInputBorder(borderRadius: BorderRadius.zero),
        enabledBorder:
            const OutlineInputBorder(borderRadius: BorderRadius.zero),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please confirm password';
        } else if (value != passwordValue) {
          return 'passwords do not match';
        }
        return null;
      },
    );
  }

  Widget button() {
    return ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DetailsPage()));
          }
        },
        child: const Text(
          'Next',
          style: TextStyle(fontSize: 25),
        ));
  }
}
