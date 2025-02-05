import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inputwidgets extends StatefulWidget {
  const Inputwidgets({super.key});

  @override
  State<Inputwidgets> createState() => _InputwidgetsState();
}

enum Gender { Male, Female, Trans, Other }

class _InputwidgetsState extends State<Inputwidgets> {
  final nameController = TextEditingController();
  bool checked = false;
  Gender gender = Gender.Male;

 List countries = [
   'India',
   'usa',
   'uk',
   'turky'
   'south korea',
   'UK'
  ];

  String? country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Input Widgets',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: CupertinoColors.activeGreen,
      ),
      body: Center(
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(hintText: 'Enter Your Name'),
            ),


            Row(
              children: [
                Checkbox(
                    value: checked,
                    onChanged: (value) {
                      setState(() {
                        checked = value!;
                      });
                    }),
                Text('Learning Flutter ?')
              ],
            ),
            Row(
              children: [
                Radio<Gender>(
                  value: Gender.Male,
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
                Text('Male'),
                Radio<Gender>(
                  value: Gender.Female,
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
                Text('Female'),
                Radio<Gender>(
                  value: Gender.Trans,
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
                Text('Trans'),
                Radio<Gender>(
                  value: Gender.Other,
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
                Text('Other'),
              ],
            ),

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

            ElevatedButton(
                onPressed: () {
                  print(nameController.text);
                },
                child: Text('ok')),
          ],
        ),
      ),
    );
  }
}
