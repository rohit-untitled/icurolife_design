import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zulu/components/default_button.dart';
import 'package:zulu/components/text_field.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final mobileNumber = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: SvgPicture.asset('assets/icons/Back.svg'),
            onPressed: () {
              // Handle back button press
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 34),
            child: SvgPicture.asset(
              'assets/splash/logo_color.svg',
              height: 40,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 56),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Forgot password?",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 13),
          const Padding(
            padding: const EdgeInsets.only(left: 20, right: 51),
            child: Text(
              "Don’t worry! It happens. Please enter the phone associated with your account.",
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 38),
          MyTextField(
            controller: mobileNumber,
            heading: 'Phone No.',
            hintText: 'enter phone no.',
            obscureText: false,
          ),
          const SizedBox(height: 38),
          Button(text: 'Send code', onPressed: () {})
        ],
      ),
    );
  }
}
