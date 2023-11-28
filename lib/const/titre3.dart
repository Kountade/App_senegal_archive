import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class titre3 extends StatefulWidget {
  const titre3({super.key});

  @override
  State<titre3> createState() => _titre3State();
}

class _titre3State extends State<titre3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TITRE III"),
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}
