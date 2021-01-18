import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _contactEditingController = TextEditingController();
  final TextEditingController _pinCodeController = TextEditingController();
  var _dialCode = '';
  FirebaseAuth _auth = FirebaseAuth.instance;
  phoneAuth()async{
        var number = "+88"+_contactEditingController.text;
        await _auth.verifyPhoneNumber(phoneNumber: number,
        verificationCompleted: (PhoneAuthCredential credential)async{
        var result =  await _auth.signInWithCredential(credential);
        User user = result.user;
        if(user != null){
        Navigator.pushNamed(context, '/homeScreen');
        }
        },
        timeout: Duration(
          seconds: 60
        ),
        verificationFailed:(FirebaseAuthException exception){
        print(exception);
        } ,
        codeSent: (String verificationId , int resendToken ){
      showDialog(context: context,
      builder: (context){
        return AlertDialog(
          title: Text('OTP'),
          content: Column(
            children: <Widget>[
              TextField(
                controller:_pinCodeController,
              ),
              RaisedButton(onPressed: () async{
                var smscode = _pinCodeController.text;
                PhoneAuthCredential phoneauthcredential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: smscode);
                var result =  await _auth.signInWithCredential(phoneauthcredential);
                User user = result.user;
                if(user != null){
                  Navigator.pushNamed(context, '/homeScreen');
                }
        },
              ),
            ],
          ),
        );
      }
      );
        },
        codeAutoRetrievalTimeout:(String verificationId  ){},
    );
  }



  Future<void> clickOnLogin(BuildContext context) async {
    if (_contactEditingController.text.isEmpty) {
      showErrorDialog(context, 'Contact number can\'t be empty.');
    } else {
      final responseMessage = await Navigator.pushNamed(context, '/otpScreen',
          arguments: '$_dialCode${_contactEditingController.text}');
      if (responseMessage != null) {
        showErrorDialog(context, responseMessage as String);
      }
    }
  }

  //callback function of country picker


  //Alert dialogue to show error and response
  void showErrorDialog(BuildContext context, String message) {
    // set up the AlertDialog
    final CupertinoAlertDialog alert = CupertinoAlertDialog(
      title: const Text('Error'),
      content: Text('\n$message'),
      actions: <Widget>[
        CupertinoDialogAction(
          isDefaultAction: true,
          child: const Text('Yes'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  //build method for UI Representation
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
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
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Image.asset(
                  'assets/images/EasyIt.png',
                  height: screenHeight * 0.3,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: screenHeight * 0.00,
                ),
                const Text(
                  'Enter your mobile number to receive a verification code',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromRGBO(255, 154, 34, 1),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: screenWidth > 600 ? screenWidth * 0.2 : 16),
                  padding: const EdgeInsets.all(16.0),
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
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        height: 45,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromRGBO(255, 154, 34, 100),
                          ),
                          borderRadius: BorderRadius.circular(36),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [

                            SizedBox(
                              width: screenWidth * 0.01,
                            ),
                            Expanded(
                              child: Center(
                                child: TextField(
                                  textAlign: TextAlign.center,

                                  decoration: const InputDecoration(
                                    hintText: 'Contact Number',
                                    border: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                  controller: _contactEditingController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(11)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      FlatButton(
                        color: Colors.orange,

                        child: Text('Send OTP',),

                        onPressed: (){
                          phoneAuth();
                        },
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
