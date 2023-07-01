import 'package:flutter/material.dart';

class containerwidget extends StatelessWidget {
  const containerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Container Widget'),
          titleTextStyle:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.limeAccent,
            child: const Text(
              "Hello Omkar!!",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
