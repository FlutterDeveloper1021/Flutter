import 'package:flutter/material.dart';
import 'package:flutterapptwo/MovieProvider.dart';
import 'package:provider/provider.dart';

class MyListScreen extends StatefulWidget {
  const MyListScreen({super.key});

  @override
  State<MyListScreen> createState() => _MyListScreenState();
}

class _MyListScreenState extends State<MyListScreen> {
  @override
  Widget build(BuildContext context) {
    final _myList = context.watch<MovieProvider>().myList;
    return Scaffold(
      appBar: AppBar(
        title: Text("My List (${_myList.length})"),
      ),
      body: ListView.builder(
        itemCount: _myList.length,
        itemBuilder: (_, index) {
          final currentMovie = _myList[index];
          return Card(
            key: ValueKey(currentMovie.title),
            elevation: 4,
            child: ListTile(
              title: Text(currentMovie.title),
              subtitle: Text(currentMovie.duration ?? ''),
              trailing: TextButton(
                  onPressed: () {
                    context.read<MovieProvider>().removeFromList(currentMovie);
                  },
                  child: const Text(
                    'Remove',
                    style: TextStyle(color: Colors.redAccent),
                  )),
            ),
          );
        },
      ),
    );
  }
}
