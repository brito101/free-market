// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AppMenuDrawer extends StatelessWidget {
  const AppMenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
            height: 120.0,
            child: DrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(255, 241, 89, 1)),
                child: Row(
                  children: <Widget>[
                    Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(100.0)),
                          border: Border.all(color: Colors.grey, width: 4.0),
                        ),
                        child: CircleAvatar(
                          backgroundColor: Color.fromRGBO(255, 241, 89, 1),
                          foregroundColor: Colors.grey,
                          child: Icon(Icons.people),
                        )),
                    Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Hi Programmer',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            Text('Advanced Level')
                          ],
                        ))
                  ],
                ))),
        _itemDrawer(Icon(Icons.home), "Home"),
        _itemDrawer(Icon(Icons.access_time_filled), "Page 02"),
        Divider(color: Colors.grey),
        _itemDrawer(Icon(Icons.backpack_rounded), "Page 03"),
        _itemDrawer(Icon(Icons.cabin_sharp), "Page 04"),
        _itemDrawer(Icon(Icons.dangerous), "Page 05"),
        _itemDrawer(Icon(Icons.earbuds_battery_outlined), "Page 06"),
        Divider(color: Colors.grey),
        _itemDrawer(Icon(Icons.exit_to_app), "Sair"),
      ],
    );
  }

  Widget _itemDrawer(
    Icon icon,
    String text,
  ) {
    return ListTile(
      leading: IconTheme(data: IconThemeData(color: Colors.black), child: icon),
      title: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
      onTap: () {},
    );
  }
}
