import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:zulu/components/profilePage_tiles.dart';
import 'package:zulu/screens/HomeScreen/pages/Profile/edit_profile.dart';
import 'package:zulu/screens/HomeScreen/pages/Profile/tiles/about_page.dart';
import 'package:zulu/screens/HomeScreen/pages/Profile/tiles/feedback_page.dart';
import 'package:zulu/screens/HomeScreen/pages/Profile/tiles/help_and_support.dart';
import 'package:zulu/screens/HomeScreen/pages/Profile/tiles/manage_QR.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Profile',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
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

            // Profile banner

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    height: 124,
                    width: double.infinity,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      // color: Color(0xFFFF7A00),
                      color: Color(0xFF42A7C3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12, right: 30),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                              SvgPicture.asset(
                                'assets/splash/logo_color.svg',
                                height: 60,
                              )
                            ],
                          ),
                        ),
                        //
                        const Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nitish',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                '+91 7282930290',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => EditProfile()),
                                );
                              },
                              child: Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 22,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  // Profile Tiles
                  const SizedBox(height: 24),
                  ProfileListTiles(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ManageQR()),
                      );
                    },
                    title: 'Manage QR',
                    icon: Icons.shopping_bag_outlined,
                  ),
                  ProfileListTiles(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HelpSupport()),
                      );
                    },
                    title: 'Help & Support',
                    icon: Icons.help_outline_rounded,
                  ),
                  ProfileListTiles(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FeedbackPage()),
                      );
                    },
                    title: 'Feedback',
                    icon: Icons.feedback_outlined,
                  ),
                  ProfileListTiles(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AboutPage()),
                      );
                    },
                    title: 'About',
                    icon: Icons.info_outline_rounded,
                  ),
                  ProfileListTiles(
                    onTap: () {},
                    title: 'Log out',
                    icon: Icons.logout_rounded,
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
