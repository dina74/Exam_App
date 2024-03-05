import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12),
      height: 140,
      width: 350,
      decoration: BoxDecoration(
          color: const Color(0xFFECFDF3),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Positive vibes",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 16, color: const Color(0xFF344054)),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "Boost your mood with \n positive vibes",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.black, fontSize: 16),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      height: 24,
                      width: 23,
                      decoration: BoxDecoration(
                          color: const Color(0xFF32D583),
                          borderRadius: BorderRadius.circular(24)),
                      child: const Icon(
                        Icons.play_arrow_rounded,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text("10 mins",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14))
                  ],
                )
              ],
            ),
          ),
          Container(
              height: 200,
              width: 130,
              child: Image.asset("assets/images/Walking the Dog.png"))
        ],
      ),
    );
  }
}
