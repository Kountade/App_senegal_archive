import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class hymne extends StatefulWidget {
  const hymne({super.key});

  @override
  State<hymne> createState() => _hymneState();
}

class _hymneState extends State<hymne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hymne National du Sénégal"),
      ),
    );
  }
}
