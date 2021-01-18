import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_module/screens/home_screen/menu_screen.dart';
import 'package:flutter_otp_module/screens/home_screen/welcome_screen.dart';
import 'package:flutter_otp_module/screens/login_screen/widget/registration_screen.dart';
import 'package:flutter_otp_module/screens/login_screen/widget/settings.dart';

import 'screens/login_screen/login_screen.dart';
import 'screens/login_screen/widget/faq.dart';
import 'screens/otp_screen/otp_screen.dart';
import 'screens/home_screen/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter OTP Authentication',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(255, 154, 34, 1),
      ),
      home: WelcomeScreen(),
      routes: <String, WidgetBuilder>{
        '/otpScreen': (BuildContext ctx) => OtpScreen(),
        '/loginScreen': (BuildContext ctx) => LoginScreen(),
        '/registrationScreen': (BuildContext ctx) => RegistrationScreen(),
        '/homeScreen': (BuildContext ctx) => HomeScreen(),
        '/menuScreen': (BuildContext ctx) => MenuScreen(),
        '/settingsScreen': (BuildContext ctx) => SettingScreen(),
        '/faqScreen': (BuildContext ctx) => FAQScreen(),
      },
    );
  }
}
