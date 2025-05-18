import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:level_z/app_widgets/custom_card_widget.dart';
import 'package:level_z/quiz_que_page.dart';

import '../../app_widgets/app_rounded_glossy_item.dart';
import '../../utils/util_helper.dart';

class NavQuizPage extends StatefulWidget{
  @override
  State<NavQuizPage> createState() => _NavQuizPageState();
}

class _NavQuizPageState extends State<NavQuizPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
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
                       ],
                    ),

                    Text("Let's test your knowledge",style: mTextStyleBold18(mColor: Colors.white),),

                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 10.0),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(34),
                                bottom:Radius.circular(34)),
                            color: Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.builder(itemBuilder: (_,index){
                            return Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: CustomCardWidget(
                                  title: "UI UX Design",
                                  desc: "Digital Product Design",
                                  task: "10 Question",
                                onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>QuizQuePage()));
                                }),
                            );
                          }),
                        )
                        ),
                      ),
                  ],
                ),
              ),
            )
          ],
        ),

      ),
    );
  }
}