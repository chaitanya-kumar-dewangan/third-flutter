import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const

 GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
  List<String> items = List.generate(100, (index) => 'Item ${index + 1}');
  return Scaffold(
  appBar: AppBar(title: Text('Grid View Example'),backgroundColor: CupertinoColors.activeGreen,),
  body: GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 2,
  crossAxisSpacing: 2,
  mainAxisSpacing: 2,
  childAspectRatio: 1/3),
  itemCount: items.length,
  itemBuilder: (context, index) => Card(shape: RoundedRectangleBorder(),color: Colors.deepPurple,
  child: Center(
  child: Text(items[index]),
  ),
  )),
  );
  }
}
