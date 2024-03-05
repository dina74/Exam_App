import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExerciseWidget extends StatelessWidget {
  String image;
  String text;
  Color color;
  ExerciseWidget(
      {required this.image,
      required this.text,
      required this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: InkWell(
        child: Container(
          height: 50,
          width: 160,
          padding: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              Image.asset(image),
              const SizedBox(
                width: 12,
              ),
              Text(text)
            ],
          ),
        ),
      ),
    );
  }
}
