import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  var switchValue = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My First Flutter App',
        theme: ThemeData(
          primarySwatch: Colors.amber,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            body: Center(
          child: Switch(
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  print(value);
                  switchValue = value;
                });
              }),
        )));
  }
}
