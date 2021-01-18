import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text('')),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Column(
                      children: [
                        Text(
                          'Settings',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange),
                        ),
                        Image.asset(
                          'assets/images/EasyIt.png',
                          height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                ),
              )),
          Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  children: [
                    Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          Icon(
                            Icons.person,
                            color: Colors.orange,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Account Settings',
                            style:
                                TextStyle(fontSize: 20, color: Colors.orange),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          Icon(
                            Icons.lightbulb,
                            color: Colors.orange,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'About Us',
                            style:
                                TextStyle(fontSize: 20, color: Colors.orange),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          Icon(
                            Icons.logout,
                            color: Colors.orange,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Log out',
                            style:
                                TextStyle(fontSize: 20, color: Colors.orange),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 40,
                ),
                color: Colors.orange,
              ))
        ],
      ),
    );
  }
}
