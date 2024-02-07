import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zulu/components/default_button.dart';
import 'package:zulu/components/text_field.dart';
import 'package:zulu/screens/auth/otp_form/otp_form.dart';
import 'package:zulu/screens/orderQR/OrderQR.dart';

class OpeningScreen extends StatefulWidget {
  const OpeningScreen({Key? key}) : super(key: key);

  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  // text editing controllers
  final mobileNumber = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: SvgPicture.asset(
                    "assets/splash/logo_color.svg",
                    height: 100,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'icurolife',
                  style: TextStyle(
                    color: Color(0xFF42A7C3),
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 60, right: 60, top: 20, bottom: 30),
                  child: Text(
                    'QR for saving lives & Helping People with unattended Parking',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ),
                MyTextField(
                  controller: mobileNumber,
                  heading: 'Mobile Number',
                  hintText: '10 digit mobile number',
                  obscureText: false,
                ),
                const SizedBox(height: 30),
                Button(
                    text: 'Get OTP',
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => OtpForm()));
                    }),
                const SizedBox(height: 30),

                // terms and services
                RichText(
                  text: TextSpan(
                    text: "By clicking, I accept the ",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                    children: [
                      TextSpan(
                        text: "terms of service",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Handle terms of service click
                            print("Terms of Service Clicked");
                          },
                      ),
                      TextSpan(
                        text: " and ",
                      ),
                      TextSpan(
                        text: "privacy policy",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Handle privacy policy click
                            print("Privacy Policy Clicked");
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
