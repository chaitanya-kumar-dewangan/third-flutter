import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> items = List.generate(1000, (index) => 'Item ${index + 1}');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Contact App', style: TextStyle(color: Colors.white)),
        backgroundColor: CupertinoColors.activeGreen,
        actions: [
          IconButton(icon: Icon(Icons.add, color: Colors.white,), onPressed: (){
            print('add button');
          },),
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // Add search functionality here
              print('Search button pressed');
            },
          ),

          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              // Add menu functionality here
              print('Menu button pressed');
            },
          ),

        ],
      ),
      body: ListView.builder(
        
        itemCount: items.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(3.0),
          child: ListTile(
            tileColor: index.isEven? Colors.lightGreen.shade100: Colors.lightGreen.shade200,
            title: Text('Contact ${index + 1}'),
            subtitle: Text('This is contact ${index + 1}'),
          ),
        ),
      ),
    );
  }
}
