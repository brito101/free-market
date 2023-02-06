// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:app_ml/pages/page01.dart';
import 'package:app_ml/pages/page02.dart';

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
        _itemDrawer(context, Page01(),
            icon: Icon(Icons.home), text: "Home", badge: ''),
        _itemDrawer(context, Page02(),
            icon: Icon(Icons.access_time_filled), text: "Page 02", badge: '5'),
        Divider(color: Colors.grey),
        _itemDrawer(context, Page01(),
            icon: Icon(Icons.backpack_rounded), text: "Page 03", badge: ''),
        _itemDrawer(context, Page02(),
            icon: Icon(Icons.cabin_sharp), text: "Page 04", badge: ''),
        _itemDrawer(context, Page01(),
            icon: Icon(Icons.dangerous), text: "Page 05", badge: ''),
        _itemDrawer(context, Page01(),
            icon: Icon(Icons.earbuds_battery_outlined),
            text: "Page 06",
            badge: ''),
        Divider(color: Colors.grey),
        _itemDrawer(context, Page02(),
            icon: Icon(Icons.exit_to_app), text: "Sair", badge: ''),
      ],
    );
  }

  Widget _itemDrawer(
    context,
    page, {
    required Icon icon,
    required String text,
    required String badge,
  }) {
    return ListTile(
      leading: IconTheme(data: IconThemeData(color: Colors.black), child: icon),
      title: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
      trailing: Container(
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(40.0)),
        child: badge != ''
            ? Padding(
                padding: EdgeInsets.fromLTRB(6.0, 2.0, 6.0, 2.0),
                child: Text(
                  badge,
                  style: TextStyle(
                      backgroundColor: Colors.black, color: Colors.white),
                ),
              )
            : Text(''),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}
