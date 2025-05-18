import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:level_z/app_widgets/build_options.dart';
import 'package:level_z/utils/util_helper.dart';

import 'app_widgets/app_rounded_glossy_item.dart';

class QuizQuePage extends StatefulWidget{
  @override
  State<QuizQuePage> createState() => _QuizQuePageState();
}

class _QuizQuePageState extends State<QuizQuePage> {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
        Stack(
          children: [
            ShaderMask(
              shaderCallback: (react){
                return const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors:[Colors.blue,Colors.deepPurpleAccent]
                ).createShader(Rect.fromLTRB(0, 0, react.width, react.height));
              },
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors:[Colors.blue.withOpacity(0.8),Colors.deepPurpleAccent.withOpacity(0.7)]),
                ),
              ),
              blendMode: BlendMode.dstIn,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                            onTap: (){Navigator.pop(context);},
                            child: AppRoundedGlossyItem(icon: Icons.arrow_back_ios_sharp)),
                        Expanded(child:
                        Center(child:
                        Text("Question 3/10",style: mTextStyleBold20(mColor: Colors.white),))),
                        SizedBox(width: 5,),
                        AppRoundedGlossyItem(icon: Icons.bookmark_border_outlined),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 15.0),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(34),
                                bottom:Radius.circular(34)),
                            color: Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top:8.0),
                                height: 240,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(21),
                                  gradient: LinearGradient(
                               begin: Alignment.topCenter,
                               end: Alignment.bottomCenter,
                               colors:[Colors.blue.withOpacity(0.8),Colors.deepPurpleAccent.withOpacity(0.7)]),
                                ),
                                child: Center(child: RichText(text:
                                TextSpan(
                                  text:"What is the meaning of UI UX Design?",
                                    style: mTextStyleBold18(mColor: Colors.white)),
                                )),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text("Time",style: mTextStyleBold16(mColor: Colors.black),),
                                  SizedBox(width:8,),
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(4),
                                      child: LinearProgressIndicator(
                                        value: 0.5, // Adjust dynamically (0.0 to 1.0)
                                        backgroundColor: Colors.orange.withOpacity(0.3),
                                        valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                                        minHeight: 9,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text("00:12", style: mTextStyleBold16(mColor: Colors.orange)),
                                  SizedBox(height: 16,),
                                ],
                              ),
                              SizedBox(height: 16,),
                              BuildOptions(label: "A", text: "User Interfoce and User Experience"),
                              SizedBox(height: 8,),
                              BuildOptions(label: "B", text: "User Interfice and Using Experience"),
                              SizedBox(height: 8,),
                              BuildOptions(label: "C", text: "User Interface and User Experience",isSelected: true,),
                              SizedBox(height: 8,),
                              BuildOptions(label: "D", text: "Using Interface and Using Experience"),

                              SizedBox(height: 15,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  _buildBottomButton(Icons.cut, "50/50"),
                                  _buildBottomButton(Icons.people, "Audience"),
                                  _buildBottomButton(Icons.access_time, "Add Time"),
                                  _buildBottomButton(Icons.arrow_forward_ios, "Skip"),
                                ],
                              )


                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),



      ),
    );
  }

  Widget _buildBottomButton(IconData icon, String label) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.orange.withOpacity(0.8),
            borderRadius:BorderRadius.only(
          topLeft: Radius.circular(11),
      bottomLeft: Radius.circular(11),
      topRight: Radius.circular(11),
      bottomRight: Radius.circular(11),
    ),),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(icon, color: Colors.white,size: 25,),
                SizedBox(height: 4),
                FittedBox(child: Text(label, style:mTextStyleBold16(mColor: Colors.white))),
              ],
            ),
          ),
        ),

      ],
    );
  }
}