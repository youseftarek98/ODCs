import 'package:flutter/material.dart';

Widget textFormFieldNotes(BuildContext context ,
    {required String valueKey,
      required TextEditingController controller,
      required bool enabled,
      required Function fct,
      String? hintText ,
      String? labelText ,
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
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontStyle: FontStyle.italic),
          maxLines: valueKey == 'TextDescription' ? 5 : 1,
          maxLength: maxLength,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            filled: true,
            fillColor: Theme.of(context).scaffoldBackgroundColor,
            enabledBorder:  const OutlineInputBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20) ,bottomRight:  Radius.circular(20) ,),
                borderSide: BorderSide(
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

            labelText: labelText,
            labelStyle:  TextStyle(color: Colors.grey.shade700),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide:const BorderSide(
                  color: Colors.deepOrange,
                )),
            // focusedErrorBorder: const OutlineInputBorder(
            //   borderSide: BorderSide(
            //   color: Colors.red,
            // ))
          ),
        ),
      ));
}