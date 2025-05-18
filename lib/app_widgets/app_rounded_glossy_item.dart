import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoundedGlossyItem extends StatelessWidget{
  IconData icon;
  AppRoundedGlossyItem({required this.icon});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
        child: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
          ),
          child: Center(
            child: Icon(icon,color: Colors.white,) ,
          ),
        ),
      ),
    );
  }

}