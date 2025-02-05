import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:third/InputWidgets.dart';
import 'package:third/Profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List countries = [
    'India',
    'usa',
    'uk',
    'turkey',
    'south korea',
    'UK'
  ];
  String? country;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.activeGreen,
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
                child: Text('View Profile Detail')),

            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Inputwidgets()),
                  );
                },
                child: Text('Input Widgets')),

            DropdownButton<String>(
                hint: Text('Select Your Country'),
                value: country,
                items: countries
                    .map((e) => DropdownMenuItem<String>(child: Text(e)))
                    .toList(),
                onChanged: (value){
                  setState(() {
                    country=value;
                  });

                }),


          ],
        ),
      ),
    );
  }
}
