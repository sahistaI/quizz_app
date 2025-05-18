import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/util_helper.dart';


class CustomCardWidget extends StatelessWidget{
  String title;
  String desc;
  String task;
  VoidCallback onTap;

  CustomCardWidget({required this.title,required this.desc,
    required this.task,required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 11,
      child: ListTile(
        title: Text(title,style: mTextStyleBold18(),),
        subtitle:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(desc,style: mTextStyle16(mColor: Colors.grey)),
            Row(
              children: [
                Icon((Icons.my_library_books_outlined),size: 20,),
                SizedBox(width: 4,),
                Text(task,style: mTextStyleBold14(),),
              ],
            ),
          ],
        ),
        trailing: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors:[Colors.blue.withOpacity(0.5),
                        Colors.deepPurpleAccent.withOpacity(0.7)]),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: onTap
                    , child: Text('Start',
                    style: TextStyle(fontSize: 21,color: Colors.white,fontWeight: FontWeight.bold)),
                ),
              ),)
          ],
        ),

      ),
    );
  }

}