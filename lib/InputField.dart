import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String label, hint;
  final bool isPassword, isPhone;
  late final myController;
  late String input;

  InputField(
      {Key? key,
      required this.label,
      required this.hint,
      required this.isPassword,
      required this.isPhone})
      : super(key: key) {
    myController = TextEditingController();
    input = "";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Text(
            label,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
        TextFormField(
          obscureText: isPassword,
          textAlign: TextAlign.left,
          controller: myController,
          onChanged: (text) {
            input = text;
          },
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "can't submit empty data";
            }
            return null;
          },
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: hint,
          ),
        )
      ],
    );
  }
}
//todo: handle phone number
