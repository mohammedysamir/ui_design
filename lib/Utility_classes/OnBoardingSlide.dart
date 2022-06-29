import 'package:flutter/material.dart';
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
