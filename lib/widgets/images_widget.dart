import 'package:flutter/material.dart';

class ImageAdd extends StatelessWidget {
  const ImageAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("The Images"),
      ),
      body: Center(
        child: Image.asset(
          'assets/images/flutter.png',
          width: 300,
          height: 200,
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
