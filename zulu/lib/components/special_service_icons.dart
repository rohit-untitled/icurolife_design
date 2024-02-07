import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SpecialServicesIcons extends StatelessWidget {
  final GestureTapCallback onTap;
  final String svg;
  final Color containerColor;
  final String labelText;

  const SpecialServicesIcons({
    Key? key,
    required this.onTap,
    required this.svg,
    required this.containerColor,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 165,
        height: 125,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.25),
              spreadRadius: 1,
              blurRadius: 12,
              offset: const Offset(0, 12),
            ),
          ],
        ),
        child: Center(
          child: SizedBox(
            width: 119,
            height: 81,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SvgPicture.asset(svg),
                  ),
                ),
                const SizedBox(height: 18),
                Text(
                  labelText,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.10,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
