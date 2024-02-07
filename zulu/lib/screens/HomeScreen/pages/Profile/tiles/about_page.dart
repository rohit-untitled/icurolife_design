import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zulu/components/about_tiles.dart';
import 'package:zulu/components/default_button.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset("assets/icons/Back.svg")),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 2,
              color: Colors.grey.shade600,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0, sigmaY: 8),
                child: Container(
                  color: Colors.white.withOpacity(0),
                ),
              ),
            ),
            // main content

            const SizedBox(height: 24),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SvgPicture.asset('assets/splash/logo_color.svg'),
                  const SizedBox(height: 4),
                  Text(
                    'icurolife',
                    style: TextStyle(
                      color: Color(0xFF42A7C3),
                      fontSize: 28,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'QR for saving lives & Helping People with unattended Parking',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 17,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 24),
                  AboutTiles(
                    question: 'What is ZULU ?',
                    answers:
                        'ZULU is a community of people to help others in need.',
                    ontap: () {},
                  ),
                  AboutTiles(
                    question: 'Why should we use ZULU ?',
                    answers:
                        'ZULU helps others in accidents caused by any factor and provide necessary treatment to the one in need.',
                    ontap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
