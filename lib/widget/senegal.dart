import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class senegal extends StatefulWidget {
  const senegal({super.key});

  @override
  State<senegal> createState() => _senegalState();
}

class _senegalState extends State<senegal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/carte.png',
              scale: 12,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Senegal',
              style: TextStyle(color: Colors.black), //<-- SEE HERE
            ),
          ],
        ),
      ),
      body: Container(),
    );
  }
}
