import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zulu/components/trackQR_tiles.dart';
import 'package:zulu/screens/HomeScreen/pages/TrackQR/Track_order_page.dart';

class TrackQR extends StatefulWidget {
  const TrackQR({super.key});

  @override
  State<TrackQR> createState() => _TrackQRState();
}

class _TrackQRState extends State<TrackQR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Track QR',
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
            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Active QR',
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 13),
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFFE8D4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/home/authorization/qr.svg',
                          width: 145,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: 11),
                        const Text(
                          'zulu@qr001',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 18),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Other QR',
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),

                  //tiles

                  Column(
                    children: [
                      TrackQRTiles(
                        svgAsset: 'assets/home/authorization/qr.svg',
                        title: 'Motor bike QR Sticker',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TrackOrder()),
                          );
                        },
                      ),
                      TrackQRTiles(
                        svgAsset: 'assets/home/authorization/qr.svg',
                        title: 'Car QR sticker',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TrackOrder()),
                          );
                        },
                      ),
                      TrackQRTiles(
                        svgAsset: 'assets/home/authorization/qr.svg',
                        title: 'Motor bike QR Sticker',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TrackOrder()),
                          );
                        },
                      ),
                      TrackQRTiles(
                        svgAsset: 'assets/home/authorization/qr.svg',
                        title: 'Car QR sticker',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TrackOrder()),
                          );
                        },
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
