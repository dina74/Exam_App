import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class TabBarItem extends StatelessWidget {
  String text;
  bool isSelected;

  TabBarItem({required this.isSelected, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      decoration: BoxDecoration(
          color: isSelected ? Color(0xFFF4EBFF) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: isSelected ? Color(0xFFD6BBFB) : Color(0xFFE4E7EC),
              width: 1)),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.inter(
            textStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: isSelected ? Color(0xFF6941C6) : Color(0xFF667085)),
          ),
        ),
      ),
    );
  }
}
