import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceWidget extends StatefulWidget {
  const SharedPreferenceWidget({super.key});

  @override
  State<SharedPreferenceWidget> createState() => _SharedPreferenceWidgetState();
}

class _SharedPreferenceWidgetState extends State<SharedPreferenceWidget> {

 @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preference'),
      ),
      body: Column(children: [
        FutureBuilder(future: SharedPreferences.getInstance(),
        builder: (context,AsyncSnapshot<SharedPreferences> snapshot) {
           return Column(
            children: [
              Text(snapshot.data!.getInt('id').toString()),
              Text(snapshot.data!.getString('Name').toString()),
            ],
           );
        }
        // Text(name.toString()),
        // Text(id.toString()),
    ),],),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          
          SharedPreferences sp = await SharedPreferences.getInstance();
          sp.setBool('IsLogin', false);
          sp.setInt('id', 001);
          sp.setString('Name', 'Omkar');
           
         
          setState(() {
            
          });
        },
        child: Icon(Icons.add),
      ),
    
    );
  }
}
