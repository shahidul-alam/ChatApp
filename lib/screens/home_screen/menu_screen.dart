import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' as IO;

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/EasyIt2.png',
          height: 50,
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(10),
          child: SizedBox(
            height: 10,
          ),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Expanded(
                flex: 4,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: 10,
                          ),
                        ),
                        Expanded(
                            flex: 6,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                //1st Box

                                height: 180,
                                decoration: BoxDecoration(
                                    color: Color(0xFFFFF8200),
                                    border: Border.all(
                                      color: Color(0xFFFF8200),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.contacts,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'Profile',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 26),
                                    )
                                  ],
                                ),
                              ),
                            )),
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: 10,
                          ),
                        ),
                        Expanded(
                            flex: 6,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                //2nd Box
                                height: 180,
                                decoration: BoxDecoration(
                                    color: Colors.greenAccent,
                                    border: Border.all(
                                      color: Colors.greenAccent,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.person,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'Contacts',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 26),
                                    )
                                  ],
                                ),
                              ),
                            )),
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: 10,
                          ),
                        ),
                        Expanded(
                            flex: 6,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                //3rd Box
                                height: 180,
                                decoration: BoxDecoration(
                                    color: Color(0xFF00B3CD),
                                    border: Border.all(
                                      color: Color(0xFF00B3CD),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.call,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'Call Log',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 26),
                                    )
                                  ],
                                ),
                              ),
                            )),
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: 10,
                          ),
                        ),
                        Expanded(
                            flex: 6,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                //4th Box
                                height: 180,
                                decoration: BoxDecoration(
                                    color: Color(0xFFFF6969),
                                    border: Border.all(
                                      color: Color(0xFFFF6969),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.chat,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'Chat',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 26),
                                    )
                                  ],
                                ),
                              ),
                            )),
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.orange,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 6,
                          child: Icon(
                            Icons.bedtime_outlined,
                            size: 30,
                            color: Colors.white,
                          )),
                      Expanded(
                          flex: 6,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/settingsScreen');
                            },
                            child: Icon(Icons.settings,
                                size: 55, color: Colors.white),
                          )),
                      Expanded(
                        flex: 6,
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/faqScreen');
                            },
                            child: Icon(Icons.question_answer,
                                size: 30, color: Colors.white)),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
