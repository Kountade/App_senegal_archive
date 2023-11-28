import 'package:archive_senegal/pages/aimer.dart';
import 'package:archive_senegal/pages/la_une.dart';
import 'package:archive_senegal/pages/profils.dart';
import 'package:archive_senegal/widget/widget_drawer.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;
  final screens = [
    une(
      title: 'Bienvenu',
    ),
    Aimer(),
    Profil()
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(
        Icons.receipt,
        size: 30,
      ),
      Icon(
        Icons.favorite,
        size: 30,
      ),
      Icon(
        Icons.person,
        size: 30,
      ),
    ];
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: index,
        items: items,
        onTap: (index) => setState(() => this.index = index),
      ),
      drawer: MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'images/carte.png',
          scale: 12,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: screens[index],
    );
  }
}
