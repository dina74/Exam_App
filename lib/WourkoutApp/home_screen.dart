import 'package:app_test/WourkoutApp/container_widget.dart';
import 'package:app_test/WourkoutApp/workout_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutHomeScreen extends StatelessWidget {
  static const routeName = "workout";
  WorkoutHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: const Color(0xFF363F72),
          unselectedItemColor: const Color(0xFF667085),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage("assets/images/navigation-pointer-01.png")),
                label: " "),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/Icon.png")),
                label: " "),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_sharp), label: " "),
          ],
        ),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: DefaultTabController(
          length: 4,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                        height: 56,
                        width: 56,
                        child: Image.asset("assets/images/Ellipse 10.png")),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, Jade",
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16)),
                        ),
                        Text(
                          "Ready to workout?",
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18)),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Badge(
                      padding: EdgeInsets.zero,
                      smallSize: 12,
                      backgroundColor: Color(0xFFF04438),
                      child: Icon(
                        Icons.notifications_none,
                        size: 35,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                ContainerWidget(),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Workout Programs",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 18)),
                ),
                const TabBar(
                  labelColor: Color(0xFF363F72),
                  indicatorColor: Color(0xFF363F72),
                  unselectedLabelColor: Color(0xFF667085),
                  tabs: [
                    Tab(
                      text: "All Type",
                    ),
                    Tab(
                      text: "Full Body",
                    ),
                    Tab(
                      text: "Upper",
                    ),
                    Tab(
                      text: "Lower",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      WorkoutItem(
                          days: 7,
                          topText: "Morning Yoga",
                          bottomText: "Improve mental focus.",
                          image: "assets/images/morning.png"),
                      const SizedBox(
                        height: 8,
                      ),
                      WorkoutItem(
                          days: 3,
                          topText: "Plank Exercise",
                          bottomText: "Improve posture and stability.",
                          image: "assets/images/blank.png")
                    ],
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
