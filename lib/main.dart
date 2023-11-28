import 'package:archive_senegal/widget/constitutions.dart';
import 'package:archive_senegal/widget/graphes.dart';
import 'package:archive_senegal/widget/hymne.dart';
import 'package:archive_senegal/widget/senegal.dart';
import 'package:archive_senegal/widget/statisque.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'widget/home.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/home": (context) => home(),
        "/constitutions": (context) => constitutions(),
        "/senegal": (context) => senegal(),
        "/statistique": (context) => statistique(),
        "/graphes": (context) => graphes(),
        "/hymne": (context) => hymne(),
      },
      theme: ThemeData(primaryColor: Colors.black),
      initialRoute: "/home",
    );
  }
}
