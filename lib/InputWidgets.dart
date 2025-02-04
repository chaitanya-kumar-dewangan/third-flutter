import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inputwidgets extends StatefulWidget {
  const Inputwidgets({super.key});

  @override
  State<Inputwidgets> createState() => _InputwidgetsState();
}

class _InputwidgetsState extends State<Inputwidgets> {
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text(
          'Input Widgets',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(hintText: 'Enter Your Name'),
            ),
            // TextFormField(
            //   decoration: InputDecoration(label: Text('Enter Your Name')),
            // ),
            ElevatedButton(onPressed: (){
              print(nameController.text);
            }, child:Text('ok')),

          ],
        ),
      ),
    );
  }
}
