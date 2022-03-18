// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, deprecated_member_use, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_3/pages/feed_screen.dart';
import 'package:flutter_application_3/pages/signup_screen.dart';
import 'package:flutter_application_3/services/auth_service.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthService _authService = AuthService();
  var size, height;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.purpleAccent,
              Colors.amber,
              Colors.blue,
            ],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 130),
              child: Text(
                'Sign In',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: 'RobotoMono',
                    color: Colors.black,
                    fontStyle: FontStyle.normal),
              ),
            ),
            SizedBox(
              height: height / 45,
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: TextField(
                controller: _emailController,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(143, 189, 189, 189),
                  icon: Icon(Icons.email),
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: TextField(
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                controller: _passwordController,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(143, 189, 189, 189),
                  icon: Icon(Icons.password),
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            SizedBox(height: height / 30),
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                width: 270,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xFF8A2387),
                          Color(0xFFE94057),
                          Color(0xFFF27121),
                        ])),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              onTap: () {
                _emailController.text.isEmpty ||
                        _passwordController.text.isEmpty == true
                    ? ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text(
                              'Please do not leave the fields blank.'),
                        ),
                      )
                    : _authService
                        .signIn(_emailController.text,
                            _passwordController.text.toString())
                        .then(
                        (value) {
                          return Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => FeedScreen()),
                            ),
                          );
                        },
                      );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(height: 3, width: 130, color: Colors.white),
                  GestureDetector(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    onTap: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => SignUpScreen()),
                        ),
                      );
                    }),
                  ),
                  Container(height: 3, width: 130, color: Colors.white),
                ],
              ),
            ),
            SizedBox(
              height: height / 10,
            ),
            const Text(
              "Or Login using Social Media Account\n                       NOT ACTİVE",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.white38,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(FontAwesomeIcons.facebook,
                          color: Colors.blue)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.google,
                        color: Colors.redAccent,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.twitter,
                        color: Color.fromARGB(255, 29, 115, 228),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.linkedinIn,
                        color: Colors.green,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
