import 'package:flutter/material.dart';
import 'package:zulu/screens/HomeScreen/home_screen.dart';
import 'package:zulu/screens/account_setup/generate_QR.dart';
import 'package:zulu/screens/account_setup/setup_account.dart';
import 'package:zulu/screens/auth/forgot_password/forgot_password.dart';
import 'package:zulu/screens/auth/otp_form/otp_form.dart';
import 'package:zulu/screens/auth/reset_password/password_changed_page.dart';
import 'package:zulu/screens/auth/reset_password/reset_password.dart';
import 'package:zulu/screens/auth/signUp.dart';
import 'package:zulu/screens/orderQR/OrderQR.dart';
import 'package:zulu/screens/onboarding/onboarding_screen.dart';
import 'package:zulu/screens/opening_Screen/opening_screen.dart';
import 'package:zulu/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
