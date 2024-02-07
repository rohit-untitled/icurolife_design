import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zulu/components/default_button.dart';
import 'package:zulu/components/text_field.dart';

class GenerateQR extends StatelessWidget {
  const GenerateQR({super.key});

  @override
  Widget build(BuildContext context) {
    final Address = TextEditingController();

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
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 56),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Generate QR",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 13),
            const Text(
              "We will ship your QR sticker to your address",
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 42),
            MyTextField(
              controller: Address,
              heading: 'Address',
              hintText: 'Enter your address',
              obscureText: false,
            ),
            const SizedBox(height: 70),
            ElevatedButton(
              onPressed: () {
                // Add your onPressed logic here
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: const Color(0xFFFF7A00),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(
                    width: 1,
                    color: Color(0xFFD8DADC),
                  ),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Text(
                  'Use current location',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 170),
            Button(text: 'Proceed', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
