import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const MainButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Container(
          width: double.infinity,
          height: 55,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
                // foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 81, 175, 171)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ))),
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}
