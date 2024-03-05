import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReactItem extends StatelessWidget {
  String imagePath;
  String text;
  ReactItem({required this.imagePath, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: const Color(0xFFE4E7EC), shape: BoxShape.circle),
            child: Image.asset(imagePath)),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontSize: 14, color: Colors.black),
        ),
      ],
    );
  }
}
