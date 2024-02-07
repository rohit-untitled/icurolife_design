import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrackQRTiles extends StatelessWidget {
  final String svgAsset;
  final String title;
  final VoidCallback onTap;

  const TrackQRTiles({
    Key? key,
    required this.svgAsset,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 96,
        margin: EdgeInsets.only(bottom: 17),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Color(0x0F000000),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(4, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
          child: Row(
            children: [
              SvgPicture.asset(svgAsset),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Order Placed',
                    style: TextStyle(
                      color: Color(0xFF878787),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Track Order >>',
                    style: TextStyle(
                      color: Color(0xFF42A7C3),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.12,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
