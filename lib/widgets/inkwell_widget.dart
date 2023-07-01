import 'package:flutter/material.dart';

class InkWellwidget extends StatelessWidget {
  const InkWellwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The InkWell Widget'),
      ),
      body: Center(
        child: InkWell(
          onDoubleTap: () {
            print('On Double Tap');
          },
          onTap: () {
            print('On Tap');
          },
          onLongPress: () {
            print('On Long Press');
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
