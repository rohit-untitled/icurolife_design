import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zulu/components/default_button.dart';
import 'package:zulu/components/text_field.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //text editing controllers
  final usernameController = TextEditingController();

  final emailController = TextEditingController();

  final phoneController = TextEditingController();

  final passwordController = TextEditingController();

  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            // logo
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 35),
                child: SvgPicture.asset(
                  'assets/splash/logo_color.svg',
                  height: 40,
                ),
              ),
            ),
            const SizedBox(height: 54),
            //Signup

            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            SizedBox(height: 38),

            //usenamefield
            MyTextField(
              controller: usernameController,
              heading: 'Username',
              hintText: 'enter username',
              obscureText: false,
            ),
            const SizedBox(height: 30),

            //email field
            MyTextField(
              controller: emailController,
              heading: 'Email',
              hintText: 'enter email',
              obscureText: false,
            ),
            const SizedBox(height: 30),

            //Phone No
            MyTextField(
              controller: phoneController,
              heading: 'Phone No.',
              hintText: 'enter phone no.',
              obscureText: false,
            ),
            const SizedBox(height: 30),

            //password
            MyTextField(
              controller: passwordController,
              heading: 'Password',
              hintText: 'enter password',
              obscureText: true,
            ),
            const SizedBox(height: 2),

            //accept the term
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    visualDensity: VisualDensity.standard,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    activeColor: Color(0xFF68A2FE),
                    onChanged: (newBool) {
                      setState(() {
                        isChecked = newBool;
                      });
                    },
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                  ),
                  const Text(
                    'I accept the terms and privacy policy',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 33),

            //signup button
            Button(text: 'Sign Up', onPressed: () {}),
            const SizedBox(height: 30),

            // already have an account log in
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0.09,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0.09,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
