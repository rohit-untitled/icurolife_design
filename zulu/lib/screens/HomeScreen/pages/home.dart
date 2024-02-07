import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zulu/components/service_offered_icons.dart';
import 'package:zulu/components/special_service_icons.dart';
import 'package:zulu/screens/HomeScreen/pages/Profile/tiles/manage_QR.dart';
import 'package:zulu/screens/HomeScreen/pages/hospitals/hospitals.dart';
import 'package:zulu/screens/HomeScreen/special_services/authorization.dart';
import 'package:zulu/screens/HomeScreen/special_services/orderQR.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hi Nitish!",
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              children: [
                SvgPicture.asset('assets/home/location.svg'),
                const Text(
                  " Banglore, India ",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFFB3B3B3),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SvgPicture.asset('assets/home/down.svg'),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 19),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.shade400,
                  width: 2,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: SvgPicture.asset(
                  'assets/home/notification.svg',
                ),
              ),
            ),
          ),
        ],
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
            // banner widget
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 21),

                  HomeBanner(),

                  const SizedBox(height: 21),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Services Offered',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Services offered tiles

                      ServiceOfferedIcons(
                        containerColor: Color(0x1437D69E),
                        svg: 'assets/home/services/manage_qr.svg',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ManageQR()),
                          );
                        },
                        buttonText: 'Manage QR',
                      ),
                      ServiceOfferedIcons(
                        containerColor: Color(0x14FF6E66),
                        svg: 'assets/home/services/hospital.svg',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Hospitals()),
                          );
                        },
                        buttonText: 'Nearby Hospitals',
                      ),
                      // ServiceOfferedIcons(
                      //   containerColor: Color(0x14FFC633),
                      //   svg: 'assets/home/services/shareqr.svg',
                      //   onPressed: () {},
                      //   buttonText: 'Share  QR',
                      // ),
                      ServiceOfferedIcons(
                        containerColor: Color(0x143642DA),
                        svg: 'assets/home/services/saveqr.svg',
                        onPressed: () {},
                        buttonText: 'Save QR',
                      ),
                      Spacer(),
                    ],
                  ),
                  const SizedBox(height: 19),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Special Services',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  // Special Services tiles

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SpecialServicesIcons(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OrderQR()));
                        },
                        svg: 'assets/home/services/shopping_cart.svg',
                        labelText: 'Order QR',
                        containerColor: Color(0xFFFDEEEA),
                      ),
                      SpecialServicesIcons(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Authorization(),
                            ),
                          );
                        },
                        svg: 'assets/home/services/Group.svg',
                        labelText: 'Authorization',
                        containerColor: Color(0xFFFDEAEB),
                      ),
                    ],
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

// Full banner widgets
class HomeBanner extends StatefulWidget {
  const HomeBanner({
    super.key,
  });

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Color(0xFFFFE8D4),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(left: 12),
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nitish Kumar',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'zulu@qr001',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '+91 7282930290',
                    style: TextStyle(
                      fontSize: 14,
                      height: 2,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'View all >>',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFFF7A00),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.15,
                      ),
                    ),
                  )
                ],
              ),
            ),
            //QR card
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    blurRadius: 4,
                    offset: Offset(4, 4),
                  ),
                ],
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/icons/qr_home.svg',
                  height: 120,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}