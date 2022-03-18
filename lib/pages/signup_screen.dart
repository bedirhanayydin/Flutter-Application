// ignore_for_file: no_logic_in_create_state, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_3/pages/login_screen.dart';
import 'package:flutter_application_3/services/auth_service.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();

  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
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
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: size.height * .7,
                width: size.width * .85,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(.75),
                          blurRadius: 10,
                          spreadRadius: 2)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                            controller: _usernameController,
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            cursorColor: Color.fromARGB(255, 0, 0, 0),
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              hintText: 'Username',
                              prefixText: ' ',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              focusColor: Color.fromARGB(255, 0, 0, 0),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color.fromARGB(255, 0, 0, 0),
                              )),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color.fromARGB(255, 0, 0, 0),
                              )),
                            )),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        TextField(
                            controller: _emailController,
                            style: TextStyle(
                              color: Color.fromARGB(255, 8, 0, 0),
                            ),
                            cursorColor: Color.fromARGB(255, 0, 0, 0),
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.mail,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              hintText: 'E-Mail',
                              prefixText: ' ',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              focusColor: Color.fromARGB(255, 3, 0, 0),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color.fromARGB(255, 0, 0, 0),
                              )),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color.fromARGB(255, 0, 0, 0),
                              )),
                            )),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        TextField(
                            controller: _passwordController,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            enableSuggestions: false,
                            autocorrect: false,
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            cursorColor: Color.fromARGB(255, 0, 0, 0),
                            obscureText: true,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.vpn_key,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              hintText: 'Password',
                              prefixText: ' ',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              focusColor: Color.fromARGB(255, 0, 0, 0),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color.fromARGB(255, 0, 0, 0),
                              )),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color.fromARGB(255, 0, 0, 0),
                              )),
                            )),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        TextField(
                            controller: _rePasswordController,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            enableSuggestions: false,
                            autocorrect: false,
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            cursorColor: Color.fromARGB(255, 0, 0, 0),
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.vpn_key,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              hintText: 'Re-Password',
                              prefixText: ' ',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              focusColor: Color.fromARGB(255, 0, 0, 0),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color.fromARGB(255, 0, 0, 0),
                              )),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color.fromARGB(255, 0, 0, 0),
                              )),
                            )),
                        SizedBox(
                          height: size.height * 0.08,
                        ),
                        InkWell(
                          onTap: () {
                            _usernameController.text.isEmpty ||
                                    _emailController.text.isEmpty ||
                                    _rePasswordController.text.isEmpty ||
                                    _passwordController.text.isEmpty == true
                                ? ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: const Text(
                                          'Please do not leave the fields blank.'),
                                    ),
                                  )
                                : _authService
                                    .createPerson(
                                        _usernameController.text.trim(),
                                        _emailController.text.trim(),
                                        _passwordController.text
                                            .toString()
                                            .trim())
                                    .then(
                                    (value) {
                                      return Navigator.of(context)
                                          .pushAndRemoveUntil(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      LoginScreen()),
                                              (Route<dynamic> route) => false);
                                    },
                                  );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 25, 0, 255),
                                    width: 2),
                                //color: colorPrimaryShade,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Center(
                                  child: Text(
                                "Kaydet",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 25, 0, 255),
                                  fontSize: 20,
                                ),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: size.height * .06, left: size.width * .02),
            child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Color.fromARGB(255, 255, 255, 255),
                      size: 26,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.3,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
