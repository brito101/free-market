// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:app_ml/widgets/app_bar_search.dart';
import 'package:app_ml/widgets/app_menu_drawer.dart';
import 'package:app_ml/pages/home.dart';
import 'package:app_ml/pages/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App ML Clone',
      home: HomeMyApp(),
    );
  }
}

class HomeMyApp extends StatefulWidget {
  const HomeMyApp({super.key});

  @override
  State<HomeMyApp> createState() => _HomeMyAppState();
}

class _HomeMyAppState extends State<HomeMyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: AppMenuDrawer()),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Free market',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color.fromRGBO(255, 241, 89, 1),
        actions: <Widget>[
          IconButton(
              onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cart()))
                  },
              icon: Icon(Icons.shopping_cart)),
          IconButton(
              onPressed: () =>
                  {showSearch(context: context, delegate: AppSearchBar())},
              icon: Icon(Icons.search))
        ],
      ),
      body: Home(),
    );
  }
}
