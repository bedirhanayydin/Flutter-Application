// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/feed_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff123456),
          /* image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/test.jpg'),
          ),*/
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 160),
              child: Text(
                'Log In',
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
              width: 10,
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: TextField(
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
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  minimumSize: Size(350, 50),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FeedScreen();
                  }));
                },
                child: Text(
                  'Log In',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(
                'Forgot your password?',
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
