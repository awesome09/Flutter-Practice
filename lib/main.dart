import 'package:flutter/material.dart';
import './app_screens/first_screen.dart';


void main () => runApp(new HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My First Flutter",
      home: Scaffold(
        appBar: AppBar(title: Text("Hello Flutter"),centerTitle: true,elevation: 10.0,),
        body: FirstScreen(),
      ),
    );
  }
}