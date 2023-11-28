import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class titre9 extends StatefulWidget {
  const titre9({super.key});

  @override
  State<titre9> createState() => _titre9State();
}

class _titre9State extends State<titre9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TITRE IX"),
      ),
      body: ListView(
        children: <Widget>[],
      ),
    );
  }
}
