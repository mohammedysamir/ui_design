import 'package:flutter/material.dart';
import 'package:ui_design/MainButton.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final Color blackColor = const Color.fromARGB(255, 46, 46, 46);
  final Color mainWhiteColor = const Color.fromARGB(255, 255, 255, 255);
  final Color tealColor = const Color.fromARGB(255, 81, 175, 171);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainWhiteColor,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            //skip button
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  //todo: add skip functionality
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
          OnBoardingSlide(
              image: Image.asset("assets/images/delivery.jpg"),
              mainText: "Get food delivery to your doorstep asap",
              secondaryText:
                  "We have young and professional delivery team that will bring your food as soon as possible to your doorstep"),
          MainButton(
              text: "Get Started",
              onPressed: () {
                //todo: add function to the button
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
                  //todo: navigate to sign up
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
}

class OnBoardingSlide extends StatelessWidget {
  final Image image;
  final String mainText;
  final String secondaryText;

  const OnBoardingSlide(
      {Key? key,
      required this.image,
      required this.mainText,
      required this.secondaryText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //todo: test dimensions
        SizedBox(
          height: 250,
          child: image,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
          child: Text(
            mainText,
            style: const TextStyle(
                decoration: TextDecoration.none,
                fontSize: 22.0,
                color: Color.fromARGB(255, 46, 46, 46)),
            textAlign: TextAlign.center,
          ),
        ),
        //main text
        Text(
          secondaryText,
          style: const TextStyle(
              decoration: TextDecoration.none,
              fontSize: 13.0,
              color: Color.fromARGB(255, 157, 157, 157)),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
//todo: add slider to onBoardingSlide with Gesture detector and state changer
