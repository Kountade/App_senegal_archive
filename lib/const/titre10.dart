import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class titre10 extends StatefulWidget {
  const titre10({super.key});

  @override
  State<titre10> createState() => _titre10State();
}

class _titre10State extends State<titre10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TITRE X"),
      ),
    );
  }
}
