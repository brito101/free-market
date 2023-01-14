// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App ML Clone',
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Free market',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Color.fromRGBO(255, 241, 89, 1),
          actions: <Widget>[
            IconButton(onPressed: () => {}, icon: Icon(Icons.shopping_cart)),
            IconButton(onPressed: () => {}, icon: Icon(Icons.search))
          ],
        ),
        body: Center(
          child: Text('Home'),
        ),
      ),
    );
  }
}
