import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' as IO;

class FAQScreen extends StatefulWidget {
  @override
  _FAQScreenState createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FAQ'),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushNamed(context, '/menuScreen');
                },
              );
            },
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(30.0),
          color: Colors.orange[30],
          margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'FAQ',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    color: Colors.orange),
              ),
              Text(
                '1.How can I add contacts?',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
              ),
              Text(
                'Answer: Go to Main Menu>Contacts>"+"icon. By tapping on the icon you can add new contacts.',
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.orange),
              ),
              Text(
                '2.How can I call without internet?',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
              ),
              Text(
                'Answer: No Sir/Ma`am, you cannot make a call without internet.',
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.orange),
              ),
              Text(
                '3.Is it free??',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
              ),
              Text(
                'Answer: Yes, it is. It is free to use. It is an open source project.',
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.orange),
              ),
              Text(
                '4.Is my Data secured?',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
              ),
              Text(
                'Answer: Yes your data is secured',
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
        ));
  }
}
