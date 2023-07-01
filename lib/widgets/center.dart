import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // debugCheckHasDirectionality(false)
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Center Widget'),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 460,
          color: Colors.blueGrey,
          padding: const EdgeInsets.all(25),
          child: const Text(
            'Please Mind your busineess',
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
        ),
      ),
    );
  }
}
