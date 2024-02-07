import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceOfferedIcons extends StatelessWidget {
  final Color containerColor;
  final String svg;
  final Function onPressed;
  final String buttonText;

  const ServiceOfferedIcons({
    Key? key,
    required this.containerColor,
    required this.svg,
    required this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 67,
            width: 67,
            margin: const EdgeInsets.only(right: 28),
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: SvgPicture.asset(svg),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 67,
            child: Text(
              buttonText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black.withOpacity(0.7),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
