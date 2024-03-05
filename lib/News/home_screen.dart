import 'package:app_test/News/doctor_item.dart';
import 'package:app_test/News/tabbar_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class NewsHomeScreen extends StatelessWidget {
  static const routeName = 'news';
  const NewsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF6941C6),
        selectedLabelStyle: GoogleFonts.inter(
          textStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Color(0xFF6941C6)),
        ),
        unselectedLabelStyle: GoogleFonts.inter(
          textStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Color(0xFF475467)),
        ),
        unselectedItemColor: const Color(0xFF475467),
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: " Today"),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_sharp), label: "Insights"),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_rounded), label: "Chat"),
        ],
      ),
      extendBodyBehindAppBar: true,
      // extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: DefaultTabController(
        length: 4,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/flower.png"),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "AliceCare",
                    style: GoogleFonts.milonga(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 24)),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 44,
                // width: 320,
                child: TextFormField(
                  enabled: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: const Color(0xFFD0D5DD), width: 1)),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xFF667085),
                    ),
                    hintText: "Articles, Video, Audio and More,...",
                    hintStyle: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFF667085))),
                  ),
                ),
              ),
              TabBar(
                isScrollable: true,
                dividerColor: Colors.transparent,
                indicatorColor: Colors.transparent,
                tabs: [
                  TabBarItem(isSelected: true, text: "Discover"),
                  TabBarItem(isSelected: false, text: "News"),
                  TabBarItem(isSelected: false, text: "Most Viewed"),
                  TabBarItem(isSelected: false, text: "Saved"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Hot topics",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18)),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        backgroundColor: Colors.transparent,
                        side: const BorderSide(
                            width: 0, color: Colors.transparent)),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "See more",
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Color(0xFF5925DC))),
                        ),
                        const Icon(
                          Icons.chevron_right,
                          color: Color(0xFF5925DC),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              CarouselSlider(
                items: [
                  Image.asset(
                    "assets/images/first_scroll.png",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/images/second_scroll.png",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ],
                options: CarouselOptions(
                    viewportFraction: 1,
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 8),
              ),
              const SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Get Tips",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 18)),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(18),
                height: 185,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F4F7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const DoctorItem(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Cycle Phases and Period",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18)),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        backgroundColor: Colors.transparent,
                        side: const BorderSide(
                            width: 0, color: Colors.transparent)),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "See all",
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Color(0xFF5925DC))),
                        ),
                        const Icon(
                          Icons.chevron_right,
                          color: Color(0xFF5925DC),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
