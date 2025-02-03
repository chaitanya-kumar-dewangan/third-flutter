import 'package:flutter/material.dart';
class ListViewExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<String> items = List.generate(1000, (index) => 'Item ${index+1}');
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: Text('ListView Example', style: TextStyle(color: Colors.white),),),
      body: ListView(
        children: items.map((e) => Text(e)).toList(),
      ),
    );
  }

}