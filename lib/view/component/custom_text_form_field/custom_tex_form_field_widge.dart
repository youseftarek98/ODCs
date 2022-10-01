import 'package:flutter/material.dart';

Widget textFormField(BuildContext context ,
    {required String valueKey,
       required TextEditingController controller,
      required bool enabled,
      required Function fct,
      String? hintText ,
        Icon? icon ,
       int ?maxLength}) {
  return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          fct();
        },
        child: TextFormField(

          controller: controller,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Field is missing';
            }
            return null;
          },
          enabled: enabled,
          //key: ValueKey(valueKey),
          style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontStyle: FontStyle.italic),
          maxLines: valueKey == 'TextDescription' ? 5 : 1,
          maxLength: maxLength,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            filled: true,
            fillColor: Theme.of(context).scaffoldBackgroundColor,
            enabledBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Colors.grey,
                )),
            hintText:hintText ,
            hintStyle: TextStyle(color: Colors.grey.shade500),
            errorBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide:const BorderSide(
                  color: Colors.red,
                )),
            prefixIcon: icon,


            labelStyle: const TextStyle(color: Colors.grey),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Colors.grey.shade700,
                )),
            // focusedErrorBorder: const OutlineInputBorder(
            //   borderSide: BorderSide(
            //   color: Colors.red,
            // ))
          ),
        ),
      ));
}