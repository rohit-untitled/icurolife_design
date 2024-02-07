import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zulu/components/default_button.dart';
import 'package:zulu/components/text_field.dart';
import 'package:zulu/screens/orderQR/OrderQR.dart';

class SetupAccountPage extends StatelessWidget {
  const SetupAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final FamilyType = TextEditingController();
    final Emergency1 = TextEditingController();
    final Emergency2 = TextEditingController();
    final BloodGroup = TextEditingController();
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
              Navigator.pop(context);
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 56),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "More details",
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
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Set up your account",
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
              controller: FamilyType,
              heading: 'Family type',
              hintText: 'enter your family type (e.g. nuclear, etc.)',
              obscureText: false,
            ),
            const SizedBox(height: 22),
            MyTextField(
              controller: Emergency1,
              heading: 'Emergency contact 1',
              hintText: 'enter your emergency contact',
              obscureText: false,
            ),
            const SizedBox(height: 22),
            MyTextField(
              controller: Emergency2,
              heading: 'Emergency contact 2',
              hintText: 'enter your emergency contact',
              obscureText: false,
            ),
            const SizedBox(height: 22),
            MyTextField(
              controller: BloodGroup,
              heading: 'Blood group',
              hintText: 'enter your blood group',
              obscureText: false,
            ),
            const SizedBox(height: 76),
            Button(
                text: 'Proceed',
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => OrderQRPage()));
                })
          ],
        ),
      ),
    );
  }
}
