// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 174, 0),
        elevation: 0.0, //çizgiyi kaldırdım
        title: Row(
          children: <Widget>[
            Text(
              'Back',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: Color.fromARGB(255, 24, 189, 46)),
            ),
            Text(
              'Feed',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black),
            ),
            Text(
              'Filter',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: Color.fromARGB(255, 24, 189, 46)),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 30),
            child: TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(76, 189, 189, 189),
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.square,
                        color: Color.fromARGB(82, 158, 158, 158),
                        size: 80,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: <Widget>[
                            Text(
                              'Header',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              width: 165,
                            ),
                            Text(
                              '8m ago',
                              style: TextStyle(
                                  color: Color.fromARGB(87, 0, 0, 0),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'LoremIpsum Dolar LoremIpsum Dolar \nSit Amet',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 17),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.square,
                        color: Color.fromARGB(82, 158, 158, 158),
                        size: 80,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: <Widget>[
                            Text(
                              'Header',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              width: 165,
                            ),
                            Text(
                              '8m ago',
                              style: TextStyle(
                                  color: Color.fromARGB(87, 0, 0, 0),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'LoremIpsum Dolar LoremIpsum Dolar \nSit Amet',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 17),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.square,
                        color: Color.fromARGB(82, 158, 158, 158),
                        size: 80,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: <Widget>[
                            Text(
                              'Header',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              width: 165,
                            ),
                            Text(
                              '8m ago',
                              style: TextStyle(
                                  color: Color.fromARGB(87, 0, 0, 0),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'LoremIpsum Dolar LoremIpsum Dolar \nSit Amet',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 17),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.square,
                        color: Color.fromARGB(82, 158, 158, 158),
                        size: 80,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: <Widget>[
                            Text(
                              'Header',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              width: 165,
                            ),
                            Text(
                              '8m ago',
                              style: TextStyle(
                                  color: Color.fromARGB(87, 0, 0, 0),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'LoremIpsum Dolar LoremIpsum Dolar \nSit Amet',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 17),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.square,
                        color: Color.fromARGB(82, 158, 158, 158),
                        size: 80,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: <Widget>[
                            Text(
                              'Header',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              width: 165,
                            ),
                            Text(
                              '8m ago',
                              style: TextStyle(
                                  color: Color.fromARGB(87, 0, 0, 0),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'LoremIpsum Dolar LoremIpsum Dolar \nSit Amet',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 17),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.square,
                        color: Color.fromARGB(82, 158, 158, 158),
                        size: 80,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: <Widget>[
                            Text(
                              'Header',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              width: 165,
                            ),
                            Text(
                              '8m ago',
                              style: TextStyle(
                                  color: Color.fromARGB(87, 0, 0, 0),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'LoremIpsum Dolar LoremIpsum Dolar \nSit Amet',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 17),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(134, 0, 0, 0),
                spreadRadius: 0,
                blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ('Favourite'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.all_out_outlined),
                label: ('Explore'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_box),
                label: ('Add Feed'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
