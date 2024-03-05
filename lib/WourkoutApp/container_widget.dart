import 'package:app_test/WourkoutApp/container_item.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContainerWidget extends StatelessWidget {
  ContainerItem? item;

  ContainerWidget({super.key});
  // ContainerWidget({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xFFF8F9FC),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ContainerItem(
              imagePath: "assets/images/heart.png",
              topText: "Heart Rate",
              ratio: "BPM",
              buttonText: "81"),
          const SizedBox(
            width: 12,
          ),
          Container(
            height: 50,
            width: 1,
            color: const Color(0xFFD9D9D9),
          ),
          const SizedBox(
            width: 12,
          ),
          ContainerItem(
              imagePath: "assets/images/list.png",
              topText: "To-do",
              ratio: "%",
              buttonText: "32,5"),
          const SizedBox(
            width: 12,
          ),
          Container(
            height: 50,
            width: 1,
            color: const Color(0xFFD9D9D9),
          ),
          const SizedBox(
            width: 12,
          ),
          ContainerItem(
              imagePath: "assets/images/calo.png",
              topText: "Calo",
              ratio: "Cal",
              buttonText: "1000"),
        ],
      ),
    );
  }
}
