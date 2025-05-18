
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/util_helper.dart';

class AppRoundedBtn extends StatelessWidget{

  String title;
  VoidCallback onTap;

  AppRoundedBtn({required this.title,required this.onTap,});


  @override
  Widget build(BuildContext context) {
   return SizedBox(
    height: 50,
    width: double.infinity,
    child: ElevatedButton(
      onPressed:onTap ,
      child: Text(title,style: mTextStyle16(mColor: Colors.white),),
      style: ElevatedButton.styleFrom(
      //  backgroundColor: AppColors.mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(34)
        )
      ),
    ),
   );
  }

}