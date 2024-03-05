import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ContainerItem extends StatelessWidget {
  String imagePath;
  String topText;
  String buttonText;
  String ratio;
  ContainerItem(
      {required this.imagePath,
      required this.topText,
      required this.ratio,
      required this.buttonText,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              imagePath,
              width: 12,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              topText,
              style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 12)),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              buttonText,
              style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 18)),
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              ratio,
              style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 14)),
            ),
          ],
        )
      ],
    );
  }
}
