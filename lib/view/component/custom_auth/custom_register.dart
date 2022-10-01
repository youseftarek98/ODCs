import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText;

  final String labelText;

  final IconData? iconData;

  final TextEditingController controller;

  const CustomTextFormAuth(
      {Key? key,
      required this.hintText,
      required this.labelText,
      this.iconData,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.deepOrange)),
            label: Text(labelText,
                style: const TextStyle(color: Colors.grey)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            )),
      ),
    );
  }
}
