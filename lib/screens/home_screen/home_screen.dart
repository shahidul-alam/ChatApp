import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  File _image;

  // ignore: non_constant_identifier_names
  Future CameraImage() async {
    // ignore: deprecated_member_use
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AppBar(
              title: Text(
                'Profile',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              actions: [
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 16, 5),
                    child: Icon(
                      Icons.local_gas_station,
                      size: 28,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/menuScreen');
                    //Go to MainScreen
                  },
                ),
              ],
              backgroundColor: Colors.orange,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Center(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 75),
                        child: _image == null
                            ? Image.asset(
                                'assets/images/user.png',
                                height: 200,
                                width: 200,
                              )
                            : Image.file(
                                _image,
                                height: 200,
                                width: 200,
                              ),
                      ),
                    ),
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 150, 50, 0),
                        child: Icon(Icons.camera_alt),
                      ),
                      onTap: () {
                        CameraImage();
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            Center(
                child: Text(
              'Profile Name',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Center(
                child: Text(
              'About',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              'Phone Number',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: '',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 56, 0),
              child: Container(
                color: Colors.orange,
                child: Image.asset('assets/images/Rectangle39.png'),
              ),
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}
// ignore: unused_element
