import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

import 'package:pin_entry_text_field/pin_entry_text_field.dart';


// ignore: must_be_immutable
class OtpScreen extends StatefulWidget {
  bool _isInit = true;
  var _contact = '';
  static const String id = 'otp_screen';

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  phoneAuth()async{
    await _auth.verifyPhoneNumber(phoneNumber: null,
        verificationCompleted: null,
        verificationFailed: null,
        codeSent: null,
        codeAutoRetrievalTimeout: null
    );
  }

  @override


  //build method for UI

  Widget build(BuildContext context) {
    //Getting screen height width
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/EasyIt.png',
                  height: screenHeight * 0.3,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: screenWidth > 600 ? screenWidth * 0.2 : 5),
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Text(
                        'We have sent an OTP to your Easy it number, enter that OTP here... ${widget
                            ._contact}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          color: const Color.fromRGBO(255, 154, 34, 1),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Text(
                        'Enter OTP',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: const Color.fromRGBO(255, 154, 34, 1),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: screenWidth * 0.000),
                        child: PinEntryTextField(
                          isTextObscure: false,
                          fields: 6,
                          onSubmit: (text) {

                          },
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                      GestureDetector(
                        onTap: () {

                        },
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          height: 45,
                          width: 200,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 154, 34, 1),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'Submit',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

  //Method for generate otp from firebase



