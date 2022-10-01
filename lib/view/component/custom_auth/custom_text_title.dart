import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  const CustomText({Key? key, required this.labelText, required this.fontSize, required this.fontWeight, required this.color}) : super(key: key);
  final String labelText;
  final double fontSize ;
  final FontWeight fontWeight ;
  final Color color ;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        labelText,
        style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight),
      ),
    );
  }
}
