import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zulu/components/trackQR_tiles.dart';
import 'package:zulu/screens/HomeScreen/pages/QRDetails.dart';

class ManageQR extends StatefulWidget {
  const ManageQR({super.key});

  @override
  State<ManageQR> createState() => _ManageQRState();
}

class _ManageQRState extends State<ManageQR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Manage QR',
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
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'My QR',
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // main banner of manage QR
                  ManageQRBanner(),

                  // following tiles
                  const SizedBox(height: 22),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Other QR',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 22),
                  TrackQRTiles(
                    svgAsset: 'assets/home/authorization/qr.svg',
                    title: 'Brother QR',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QRDetails(),
                          ));
                    },
                  ),
                  TrackQRTiles(
                    svgAsset: 'assets/home/authorization/qr.svg',
                    title: 'Mother QR',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QRDetails(),
                          ));
                    },
                  ),
                  TrackQRTiles(
                    svgAsset: 'assets/home/authorization/qr.svg',
                    title: 'Father QR',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QRDetails(),
                          ));
                    },
                  ),
                  TrackQRTiles(
                    svgAsset: 'assets/home/authorization/qr.svg',
                    title: 'Bina QR',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QRDetails(),
                          ));
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// manage qr banner
class ManageQRBanner extends StatelessWidget {
  const ManageQRBanner({
    super.key,
  });

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                      blurRadius: 8,
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
              const Spacer(),
              const Text(
                'zulu@qr001',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
