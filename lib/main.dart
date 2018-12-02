import 'package:flutter/material.dart';
import './app_screens/list.dart';

void main() => runApp(new HomePage());

class HomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: "My Flutter",
      debugShowCheckedModeBanner: false,
      color: Colors.redAccent,
      home: Scaffold(
        appBar: AppBar(title: Text("Hello Appbar",style: TextStyle(color: Colors.white,fontSize: 30.0),),),
        body: HomeList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint("Fab Clicked"),
          child: Icon(Icons.add),
          tooltip: "Add more Items",
        ),
      ),
    );
  }
}