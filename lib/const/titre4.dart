import 'package:flutter/material.dart';

class titre4 extends StatefulWidget {
  const titre4({super.key});

  @override
  State<titre4> createState() => _titre4State();
}

class _titre4State extends State<titre4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TITRE IV"),
      ),
    );
  }
}
