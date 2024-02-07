import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zulu/components/authorization_tiles.dart';
import 'package:zulu/components/orderqr_tiles.dart';
import 'package:zulu/screens/HomeScreen/special_services/next_orderQRPage.dart';

class OrderQR extends StatefulWidget {
  const OrderQR({super.key});

  @override
  State<OrderQR> createState() => _OrderQRState();
}

class _OrderQRState extends State<OrderQR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Order QR',
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
                  OrderQRTiles(
                    text: 'Motor bike QR Sticker',
                    price: 150,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NextOrderQRPage(),
                        ),
                      );
                    },
                  ),
                  OrderQRTiles(
                    text: 'Motor bike QR Sticker',
                    price: 150,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NextOrderQRPage(),
                        ),
                      );
                    },
                  ),
                  OrderQRTiles(
                    text: 'Motor bike QR Sticker',
                    price: 150,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NextOrderQRPage(),
                        ),
                      );
                    },
                  ),
                  OrderQRTiles(
                    text: 'Motor bike QR Sticker',
                    price: 150,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NextOrderQRPage(),
                        ),
                      );
                    },
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
