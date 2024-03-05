import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorItem extends StatelessWidget {
  const DoctorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/Doctor-PNG-Images 1.png"),
        SizedBox(
          width: 35,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Connect with doctors &\nget suggestions",
              style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 14)),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Connect now and get\nexpert insights",
              style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14)),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    backgroundColor: Color(0xFF7F56D9)),
                child: Text(
                  "View detail",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.white)),
                ))
          ],
        )
      ],
    );
  }
}
