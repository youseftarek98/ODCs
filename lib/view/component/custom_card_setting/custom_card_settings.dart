
import 'package:flutter/material.dart';

Widget customCardSettings() {
  return Card(
    child: InkWell(
      onTap: (){
        print('data') ;
      },
      child: const ListTile(
        title: Text("Settings Screen" , style: TextStyle(
            fontSize: 20,
            color: Colors.deepOrange
        ),),
        trailing: Icon(Icons.navigate_next_rounded , color: Colors.deepOrange , size: 34,),
      ),
    ),
  ) ;
}