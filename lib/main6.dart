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
      title: const Text('ปฏิบัติการบทที่ 5 - Layouts'), // อัปเดต title
      backgroundColor: Colors.indigo, // เปลี่ยนสีตามต้องการ
    ),
    body:  Padding( 
      padding: EdgeInsets.all(16.0),
      child: Row(
  children: <Widget>[
    Expanded(flex: 1, child: Container(color: Colors.red, height: 100)),
    Expanded(flex: 2, child: Container(color: Colors.green, height: 100)),
    Expanded(flex: 1, child: Container(color: Colors.blue, height: 100)),
  ],
),
    ),
  );
 }
}