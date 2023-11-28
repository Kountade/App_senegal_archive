import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class titre7 extends StatefulWidget {
  const titre7({super.key});

  @override
  State<titre7> createState() => _titre7State();
}

class _titre7State extends State<titre7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TITRE VII"),
      ),
    );
  }
}
