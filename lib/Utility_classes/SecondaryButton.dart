import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const SecondaryButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Container(
          width: double.infinity,
          height: 55,
          child: OutlinedButton(
            onPressed: onPressed,
            style: ButtonStyle(
                side: MaterialStateProperty.all(const BorderSide(
                    color: Color.fromARGB(255, 81, 175, 171), width: 2)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ))),
            child: Text(
              text,
              style: const TextStyle(
                  color: Color.fromARGB(255, 81, 175, 171),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}
