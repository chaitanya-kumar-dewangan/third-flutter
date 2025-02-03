import 'package:flutter/material.dart';
import 'package:third/GridViewExample.dart';
import 'package:third/list_view_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridViewExample(),
    );
  }
}

