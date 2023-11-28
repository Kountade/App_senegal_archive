import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class titre12 extends StatefulWidget {
  const titre12({super.key});

  @override
  State<titre12> createState() => _titre12State();
}

class _titre12State extends State<titre12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TITRE XII"),
      ),
    );
  }
}
