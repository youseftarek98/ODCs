


import 'package:flutter/material.dart';

Widget customSitting(BuildContext context  ,{required Function onTap , required String text , required IconData icon}){
  return InkWell(
    onTap: () {
      onTap() ;

    },
    child: ListTile(
      title:  Text(
        text,
        style: const TextStyle(fontSize: 20, color: Colors.black87),
      ),
      trailing: Icon(
        icon,
        color: Colors.grey.shade500,
        size: 40,
      ),
    ),
  ) ;
}