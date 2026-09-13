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
    body: const Padding( 
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
    Icon(Icons.home, size: 40.0, color: Colors.blue),
    Icon(Icons.search, size: 40.0, color: Colors.green),
    Icon(Icons.person, size: 40.0, color: Colors.orange),
    ],
     ),
    ),
  );
 }
}