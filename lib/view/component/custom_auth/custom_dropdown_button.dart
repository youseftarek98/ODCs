import 'package:flutter/material.dart';
class CustomDropDownButton extends StatelessWidget {

   CustomDropDownButton( this.value , {Key? key, required this.item}) : super(key: key);
final List<String> item ;
  String? value ;
  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.symmetric(vertical: 5 , horizontal: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.deepOrange , width: 1.5),
          borderRadius: BorderRadius.circular(10)
      ),
      child: DropdownButton(
        items: item
            .map((e) => DropdownMenuItem(
          child: Text('$e'),
          value: e,
        ))
            .toList(),
        onChanged: (val){
          value = val as String? ;
        } ,
        value: value,
      ),
    );
  }
}
