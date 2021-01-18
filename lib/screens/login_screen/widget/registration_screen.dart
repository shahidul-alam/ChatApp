import 'package:flutter/material.dart';
import 'RoundedButton.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  //white part decoration
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(
                          MediaQuery.of(context).size.width, 60.0)),
                  color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 150,
                  ),
                  Container(
                    height: 260.0,
                    width: 200,
                    child: Image.asset(
                      'assets/images/EasyIt.png',
                      height: 268,
                      width: 268,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(120, 0, 120, 30),
                    child: RoundedButton(
                      onpressed: () {
                        Navigator.pushNamed(context, '/sign_in');
                      },
                      text: 'Sign In',
                      colour: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //2nd Part
              color: Colors.orange,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      'Dont have an account ?',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(width: 3, color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/loginScreen');
                      },
                      child: Text(
                        'Create New',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Center(
                        child: Text(
                          'By opening account , I accept Easy It’s ',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                      GestureDetector(
                        // Terms of service Page
                        onTap: () {
                          Navigator.pushNamed(context, '/homeScreen');
                        },
                        child: Center(
                          child: Text(
                            'Terms and services',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
