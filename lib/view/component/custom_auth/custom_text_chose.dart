import 'package:flutter/material.dart';

class CustomTextFormChose extends StatelessWidget {
  final String hintText;

  final String labelText;

  final IconData? iconData;

  final TextEditingController controller;

  const CustomTextFormChose(
      {Key? key,
        required this.hintText,
        required this.labelText,
        this.iconData,
        required this.controller
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: const EdgeInsets.only(top: 17),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 14),
            // contentPadding: EdgeInsets.symmetric(vertical: 5),
            suffixIcon: GestureDetector(
              child: Icon(iconData),
            ),
            label: Text(labelText , style:const  TextStyle(color: Colors.grey)),
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
