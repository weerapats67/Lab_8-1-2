import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layouts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('ปฏิบัติการบทที่ 5 - Layouts'), 
      backgroundColor: Colors.indigo, 
    ),
    body: Padding( 
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        Container(color: Colors.red, width: 50, height: 50),
        Container(color: Colors.green, width: 100, height: 50),
        Container(color: Colors.blue, width: 75, height: 50),
  ],
),
    ),
  );
 }
}