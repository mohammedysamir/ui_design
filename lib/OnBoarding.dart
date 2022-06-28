import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ui_design/Utility_classes/MainButton.dart';
import '/Utility_classes/OnBoardingSlide.dart';
import 'HomePage.dart';
import 'RegisterScreen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final Color blackColor = const Color.fromARGB(255, 46, 46, 46);
  final Color mainWhiteColor = const Color.fromARGB(255, 255, 255, 255);
  final Color tealColor = const Color.fromARGB(255, 81, 175, 171);
  int currentSlide = 0;
  List<OnBoardingSlide> slides = [
    OnBoardingSlide(
        image: Image.asset("assets/images/delivery.jpg"),
        mainText: "Get food delivery to your doorstep asap",
        secondaryText:
            "We have young and professional delivery team that will bring your food as soon as possible to your doorstep"),
    OnBoardingSlide(
        image: Image.asset("assets/images/buy_food.jpg"),
        mainText: "Buy any food from your favorite restaurant",
        secondaryText:
            "We are consistently adding your favorite restaurant throughout the territory and around your area carefully selected"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainWhiteColor,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //skip button
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const MyHomePage(title: "Welcome to home page")));
                },
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(10)),
                    foregroundColor: MaterialStateProperty.all(blackColor),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 250, 242, 231)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ))),
                child: const Text(
                  "skip",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          //brand name
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "7",
                style: TextStyle(
                    color: Color.fromARGB(255, 233, 183, 119),
                    decoration: TextDecoration.none,
                    fontSize: 30),
              ),
              Text("Krave",
                  style: TextStyle(
                      color: tealColor,
                      decoration: TextDecoration.none,
                      fontSize: 30)),
            ],
          ),
          slides.elementAt(currentSlide),
          MainButton(
              text: "Get Started",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MyHomePage(title: "Welcome to home page")));
              }),
          //sign up text
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account? ",
                style: TextStyle(
                    color: blackColor,
                    fontSize: 14,
                    decoration: TextDecoration.none),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen()));
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: tealColor,
                      fontSize: 14,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 6), (timer) {
      setState(() {
        currentSlide = (currentSlide + 1) % slides.length;
      });
    });
    super.initState();
  }
}
