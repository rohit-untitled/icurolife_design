import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zulu/components/about_tiles.dart';

class QRDetails extends StatelessWidget {
  const QRDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'QR Details',
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
              const SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            blurRadius: 8,
                            offset: Offset(4, 4),
                          ),
                        ],
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/qr_home.svg',
                          height: 150,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    // following tiles
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        QRButton(
                          text: 'Share QR',
                          onPressed: () {},
                        ),
                        QRButton(
                          text: 'Download QR',
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Divider(
                      color: Colors.grey.shade400,
                      thickness: 2,
                    ),
                    const SizedBox(height: 10),
                    AboutTiles(
                        question: 'Username', answers: 'Nitish', ontap: () {}),
                    AboutTiles(
                        question: 'Blood Group', answers: 'O-', ontap: () {}),
                    AboutTiles(
                        question: 'Phone No.',
                        answers: '+91 7980030764',
                        ontap: () {}),
                    AboutTiles(
                        question: 'Emergency Contact 1 No.',
                        answers: '+91 7980030764',
                        ontap: () {}),
                    AboutTiles(
                        question: 'Emergency Contact 2 No.',
                        answers: '+91 7980030764',
                        ontap: () {}),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class QRButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  const QRButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Color(0xFFFF7A00),
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
