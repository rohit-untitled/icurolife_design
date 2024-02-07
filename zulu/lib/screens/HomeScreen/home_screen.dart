import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zulu/screens/HomeScreen/pages/ScanQR.dart';
import 'package:zulu/screens/HomeScreen/pages/TrackQR/TrackQR.dart';
import 'package:zulu/screens/HomeScreen/pages/home.dart';
import 'package:zulu/screens/HomeScreen/pages/hospitals/hospitals.dart';
import 'package:zulu/screens/HomeScreen/pages/Profile/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  final screens = [
    Home(),
    Hospitals(),
    ScanQR(),
    // TrackQR(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: screens[index]),
          _buildBlurredDivider(),
        ],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 14,
              color: Colors.grey.shade400,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 8,
        ),
        child: NavigationBar(
          indicatorColor: const Color.fromARGB(255, 228, 243, 255),
          elevation: 0,
          selectedIndex: index,
          height: 70,
          backgroundColor: Colors.transparent,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(
              icon: SvgPicture.asset('assets/NavBar/home.svg', height: 24),
              selectedIcon: SvgPicture.asset(
                'assets/NavBar/home.svg',
                height: 30,
                color: Colors.blue,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: SvgPicture.asset('assets/NavBar/hospitals.svg', height: 24),
              selectedIcon: SvgPicture.asset(
                'assets/NavBar/hospitals.svg',
                height: 30,
                color: Colors.blue,
              ),
              label: 'Hospitals',
            ),
            NavigationDestination(
              icon: SvgPicture.asset('assets/NavBar/scanQR.svg', height: 24),
              selectedIcon: SvgPicture.asset(
                'assets/NavBar/scanQR.svg',
                height: 30,
                color: Colors.blue,
              ),
              label: 'Scan QR',
            ),

            // Track QR feature

            // NavigationDestination(
            //   icon: SvgPicture.asset('assets/NavBar/track.svg', height: 24),
            //   selectedIcon: SvgPicture.asset(
            //     'assets/NavBar/track.svg',
            //     height: 30,
            //     color: Colors.blue,
            //   ),
            //   label: 'Track QR',
            // ),
            NavigationDestination(
              icon: SvgPicture.asset('assets/NavBar/profile.svg', height: 24),
              selectedIcon: SvgPicture.asset(
                'assets/NavBar/profile.svg',
                height: 30,
                color: Colors.blue,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBlurredDivider() {
    return Divider(
      thickness: 1,
      height: 0,
      color: Colors.grey.shade300,
    );
  }
}
