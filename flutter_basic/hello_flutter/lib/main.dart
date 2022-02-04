import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Container(
        color: Colors.black12,
        child: Center(
          child: Text(
            'Hello\nFlutter!',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.indigoAccent, fontSize: 40),
          ),
        ),
      ),
    );
  }
}

