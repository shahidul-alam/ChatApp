import 'package:flutter/material.dart';
import 'package:flutter_otp_module/screens/login_screen/widget/RoundedButton.dart';
import 'package:flutter/cupertino.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 75),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Image.asset('assets/images/EasyIt.png'),
              height: 280,
              width: 280,
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(30),
              child: RoundedButton(
                onpressed: () {
                  Navigator.pushNamed(context, '/registrationScreen');
                },
                text: 'Let\'s get started',
                colour: Colors.orange,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: Colors.orange,
                  padding: EdgeInsets.all(5.0),
                  shape: CircleBorder(),
                  constraints: const BoxConstraints(
                    maxHeight: 30,
                    maxWidth: 30,
                    minHeight: 15,
                    minWidth: 15,
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: Colors.orangeAccent,
                  padding: EdgeInsets.all(5.0),
                  shape: CircleBorder(),
                  constraints: const BoxConstraints(
                    maxHeight: 30,
                    maxWidth: 30,
                    minHeight: 15,
                    minWidth: 15,
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: Colors.orangeAccent,
                  padding: EdgeInsets.all(5.0),
                  shape: CircleBorder(),
                  constraints: const BoxConstraints(
                    maxHeight: 30,
                    maxWidth: 30,
                    minHeight: 15,
                    minWidth: 15,
                  ),
                ),
                SizedBox(
                  height: 60,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
