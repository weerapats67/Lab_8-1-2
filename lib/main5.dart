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
      padding: const EdgeInsets.all(16.0),
      child: Column(
      children: <Widget>[
        const Icon(Icons.account_circle, size: 50, color: Colors.indigo),
        const SizedBox(width: 16),
        Expanded( 
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: const <Widget>[
        Text(
          'โปรไฟล์ผู้ใช้',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4), 
        Text('แก้ไขรายละเอียดโปรไฟล์ของคุณที่นี่'),
      ],
    ),
  ),
],
    ),
  ),
  );
 }
}