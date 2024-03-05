import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class WorkoutItem extends StatelessWidget {
  int days;
  String image;
  String topText;
  String bottomText;
  WorkoutItem(
      {required this.days,
      required this.topText,
      required this.bottomText,
      required this.image,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xFFEAECF5),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 12),
                  padding: const EdgeInsets.only(top: 4),
                  height: 36,
                  width: 68,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFCFCFD),
                      borderRadius: BorderRadius.circular(24),
                      border:
                          Border.all(color: const Color(0xFFE4E7EC), width: 2)),
                  child: Text(
                    "$days days",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.black)),
                  )),
              const SizedBox(
                height: 12,
              ),
              Text(
                topText,
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 20)),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                bottomText,
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 12)),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  const Icon(Icons.alarm),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "30 mins",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 12)),
                  )
                ],
              ),
            ],
          ),
          Image.asset(image)
        ],
      ),
    );
  }
}
