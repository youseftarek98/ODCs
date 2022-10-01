import 'package:flutter/material.dart';

class CustomButtomAuth extends StatelessWidget {
  final String text;
  final Color color;
  final Color color1;

  final void Function()? onPressed;

  const CustomButtomAuth(
      {Key? key, required this.text, this.onPressed, required this.color, required this.color1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 20),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(color: Colors.deepOrange, width: 1.7)),
        padding: const EdgeInsets.symmetric(vertical: 14),
        onPressed: onPressed,
        color: color,
        textColor: color1,
        minWidth: 26,
        child: Text(text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
      ),
    );
  }
}
