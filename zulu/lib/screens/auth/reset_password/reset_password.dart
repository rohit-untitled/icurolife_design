import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zulu/components/default_button.dart';
import 'package:zulu/components/text_field.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final NewPassword = TextEditingController();
    final confirmNewPassword = TextEditingController();
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 56),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Reset password",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 13),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Please set your new password",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 38),
            MyTextField(
              controller: NewPassword,
              heading: 'New password',
              hintText: 'must be 8 characters',
              obscureText: false,
            ),
            const SizedBox(height: 22),
            MyTextField(
              controller: confirmNewPassword,
              heading: 'Confirm new password',
              hintText: 'repeat password',
              obscureText: false,
            ),
            const SizedBox(height: 38),
            Button(text: 'Reset password', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
