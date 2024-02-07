import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zulu/components/authorization_tiles.dart';

class Authorization extends StatefulWidget {
  const Authorization({Key? key}) : super(key: key);

  @override
  State<Authorization> createState() => _AuthorizationState();
}

class _AuthorizationState extends State<Authorization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Authorization',
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: [
                  const SizedBox(height: 22),
                  AuthorizationTiles(
                    iconAsset: 'assets/home/authorization/email.svg',
                    title: 'Verify your account',
                    subtitle: 'With email id',
                    onTap: () {},
                  ),
                  const SizedBox(height: 22),
                  AuthorizationTiles(
                    iconAsset: 'assets/home/authorization/phone.svg',
                    title: 'Verify your account',
                    subtitle: 'With phone number',
                    onTap: () {},
                  ),
                  const SizedBox(height: 22),
                  AuthorizationTiles(
                    iconAsset: 'assets/home/authorization/email.svg',
                    title: 'Verify your account',
                    subtitle: 'With unique id card',
                    onTap: () {},
                  ),
                  const SizedBox(height: 22),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
