import 'package:app_test/HealthApp/card_widget.dart';
import 'package:app_test/HealthApp/exercise_widget.dart';
import 'package:app_test/HealthApp/react_widget.dart';
import 'package:app_test/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class HealthHomeScreen extends StatelessWidget {
  static const routeName = "Health_home";
  const HealthHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppTheme.greenColor,
          unselectedItemColor: AppTheme.grayColor,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_sharp), label: " "),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_rounded), label: " "),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_sharp), label: " "),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 2, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/logo.png"),
                  const Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Badge(
                        smallSize: 15,
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.notifications_none,
                          size: 40,
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Text(
                    "Hello,",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text("Sara Rose",
                      style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("How are you feeling today ?")),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ReactItem(
                        imagePath: "assets/images/love.png", text: "Love"),
                    ReactItem(
                        imagePath: "assets/images/class.png", text: "Cool"),
                    ReactItem(
                        imagePath: "assets/images/Group.png", text: "Happy"),
                    ReactItem(
                        imagePath: "assets/images/Frame.png", text: "Sad"),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Feature",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.black, fontSize: 18),
                    ),
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
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 14,
                                    color: AppTheme.greenColor,
                                  ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: AppTheme.greenColor,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const CardItem(),
              const SizedBox(
                height: 4,
              ),
              Center(
                child: DotsIndicator(
                  dotsCount: 3,
                  position: 0,
                  decorator: const DotsDecorator(
                    color: Color(0xFFD9D9D9), // Inactive color
                    activeColor: Color(0xFF98A2B3),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Exercise",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        backgroundColor: Colors.transparent,
                        side: const BorderSide(
                            width: 0, color: Colors.transparent)),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: InkWell(
                        child: Row(
                          children: [
                            Text(
                              "See more",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 14,
                                    color: AppTheme.greenColor,
                                  ),
                            ),
                            Icon(
                              Icons.navigate_next,
                              color: AppTheme.greenColor,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  ExerciseWidget(
                    image: "assets/images/relaxiation.png",
                    text: "Relaxation",
                    color: const Color(0xFFF9F5FF),
                  ),
                  ExerciseWidget(
                      image: "assets/images/meditation.png",
                      text: "Meditation",
                      color: const Color(0xFFFFDF2FA))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  ExerciseWidget(
                    image: "assets/images/beathing.png",
                    text: "Beathing",
                    color: const Color(0xFFFFFAF5),
                  ),
                  ExerciseWidget(
                    image: "assets/images/yoga.png",
                    text: "Yoga",
                    color: const Color(0xFFF0F9FF),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
