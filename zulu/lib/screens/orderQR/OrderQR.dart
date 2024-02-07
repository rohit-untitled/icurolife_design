import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zulu/components/default_button.dart';
import 'package:zulu/screens/HomeScreen/home_screen.dart';

class OrderQRPage extends StatelessWidget {
  const OrderQRPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/splash/logo_color.svg',
              height: 150,
            ),
            const SizedBox(height: 23),
            const Text(
              'Welcome User',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                letterSpacing: -0.30,
              ),
            ),
            const SizedBox(height: 13),
            SizedBox(
              width: 257,
              child: Text(
                'Select any ways to order the QR',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.699999988079071),
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 38),
            Button(text: 'Order QR code', onPressed: () {}),
            const SizedBox(height: 12),
            Button(
                text: 'Activate QR code',
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
