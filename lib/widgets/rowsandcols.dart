import 'package:flutter/material.dart';

class RowansColwidget extends StatelessWidget {
  const RowansColwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            'Rows and Column',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ),
        body: Container(
          width: 1000,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                height: 30,
                width: 50,
                color: Colors.red,
              ),
              // const Padding(
              //     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30)),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                height: 40,
                width: 50,
                color: Colors.amber,
              ),
              // const Padding(
              // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30)),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                height: 60,
                width: 50,
                color: Colors.blue,
              )
            ],
          ),
        ));
  }
}
