import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Praktikum',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Praktikum Layout Flutter'),
        centerTitle: true,
      ),
      body: ListView(
          children: <Widget>[
            Container(color: Colors.red, height: 500, width: 200),
            Container(color: Colors.yellow, height: 500, width: 200),
            Container(color: Colors.green, height: 500, width: 200),
          ],
        ),
      );
  }
}