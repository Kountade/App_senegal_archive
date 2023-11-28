import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Aimer extends StatefulWidget {
  const Aimer({super.key});

  @override
  State<Aimer> createState() => _AimerState();
}

class _AimerState extends State<Aimer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("State"),
    );
  }
}
