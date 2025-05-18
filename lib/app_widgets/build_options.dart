import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:level_z/utils/util_helper.dart';

class BuildOptions extends StatelessWidget{
  String label;
  String text;
  bool isSelected;

  BuildOptions({required this.label,required this.text, this.isSelected = false});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(
        color: isSelected ? Colors.greenAccent.shade100 : Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: isSelected ? Colors.green : Colors.grey.shade300,
          width: 2,
        ),
      ),
      child: Row(
        children: [
          Text(label, style: mTextStyleBold18()),
          SizedBox(width: 10),
          Expanded(child: Text(text,style:mTextStyle16(),)),
          isSelected ?
            Icon(Icons.check_circle, color: Colors.green, size: 25) :
          Icon(Icons.circle_outlined, color: Colors.black, size: 25)
          ,
        ],
      ),
    );
  }

}