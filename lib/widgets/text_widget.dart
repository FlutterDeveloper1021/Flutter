import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('The Text Widget'),
      ),
      body: const Text(
        'The Omkar Gharge',
        style: TextStyle(
          color: Colors.black,
          fontSize: 32,
          // fontFamily: s,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
