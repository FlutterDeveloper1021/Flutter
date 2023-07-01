import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
      ),

      //Text Button
      // body: TextButton(
      //   child: Text('Click here!'),
      //   onPressed: () {
      //     print('Text Button is Clicked');
      //   },
      //   onLongPress: () {
      //     // print('The long press');
      //     // showDialog(context: context, builder: const Text('The alrert'));
      //   },
      // ),

      // Elevated Button
      // body: ElevatedButton(
      //   child: Text('Login'),
      //   onPressed: () {
      //     print(('Login Click'));
      //   },
      // ),

      //Outline button
      body: Center(
        child: OutlinedButton(
          style: const ButtonStyle(
            alignment: Alignment.center,
            backgroundColor: MaterialStatePropertyAll(Colors.black),
          ),
          onPressed: () {
            print('The Sign up is Sccessfullly');
          },
          onLongPress: () {
            print('The Long press');
          },
          child: const Text(
            'Sign up',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
