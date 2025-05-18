import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app_widgets/story_widget.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_constants.dart';
import '../../utils/util_helper.dart';

class NavHomePage extends StatefulWidget{
  @override
  State<NavHomePage> createState() => _NavHomePageState();
}

class _NavHomePageState extends State<NavHomePage> {

  int currentIndex = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors:[Colors.blue.withOpacity(0.5),
                  Colors.deepPurpleAccent.withOpacity(0.7)]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/images/profile_1.png",),fit: BoxFit.contain
                              )
                          ),
                        ),
                        SizedBox(width: 5,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hi,Bruce",style: mTextStyleBold20(),),
                            Text("Your daily adventure starts now",
                              style: mTextStyleBold14(mColor: AppColors.greyBlack),),
                          ],
                        ),
                      ],
                    ),
                    Material(
                      elevation: 4,
                      shape: CircleBorder(),
                      shadowColor: Colors.black,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor:Colors.grey.shade300,
                        child: Icon(Icons.notifications_none_rounded,size: 25,)
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 15,),
                
                SizedBox(
                  height: 220,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CarouselSlider(items: [
                            Image.asset("assets/images/banner_1.jpg",fit:BoxFit.cover,width:double.infinity,),
                            Image.asset("assets/images/banner_2.jpg",fit:BoxFit.cover,width:double.infinity),
                            Image.asset("assets/images/banner_3.jpeg",fit:BoxFit.cover,width:double.infinity),
                      ], options: CarouselOptions(
                          height: 200,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          viewportFraction:1,
                          onPageChanged:(index,reason){
                           setState(() {
                             currentIndex = index;
                           });
                          }
                      )),
                      Positioned(
                        bottom: 15,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(3, (index) {
                            return currentIndex == index
                                ? Container(
                              width: 17,
                              height: 17,
                              margin: const EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black),
                                  color: Colors.blue),
                            )
                                : Container(
                              width: 8,
                              height: 8,
                              margin: const EdgeInsets.symmetric(horizontal: 2.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Colors.black),
                                  color: Colors.white),
                            );
                          }),
                        ),
                      )

                    ],
                  ),
                ),
                SizedBox(height: 15,),
                SearchBar(
                  padding: WidgetStatePropertyAll(
                      EdgeInsets.symmetric(horizontal:15)),
                  backgroundColor:
                  WidgetStatePropertyAll(AppColors.lightGreyColor),
                  elevation: WidgetStatePropertyAll(0),
                  hintText: "Search...",
                  hintStyle: WidgetStatePropertyAll(mTextStyle16()),
                  leading: Image.asset("assets/icons/search.png",
                    width: 20,height: 20,color: Colors.black,),
                  trailing: [
                    Container(
                      width: 2,
                      height: 20,
                      color: AppColors.darkGreyColor,
                    ),
                    const SizedBox(width: 15,),
                    Image.asset("assets/icons/filter.png",width: 25,height: 25,)
                  ],
                ),
                SizedBox(height: 15,),
                SizedBox(
                    height: 110,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10.0),
                      child: StoryWidget(stories:AppConstants.stories,),
                    )

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Special For You",
                      style: mTextStyle18(
                        mFontweight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See all",
                      style: mTextStyleBold16(mColor:AppColors.greyBlack),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                
                Expanded(
                  child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ), itemBuilder: (_,index){
                       return  Container(
                      padding: EdgeInsets.symmetric(horizontal: 11),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          color: Colors.grey[300]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            child:   Container(
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
                              child: Image.asset("assets/story/javascript.png"),
                            ),
                            alignment: Alignment.center,
                          ),
                          Text("JavaScript", style:mTextStyleBold16(mColor: Colors.black)),


                        ],
                      ),
                    );
                  }),
                )
                
              ],
            ),
          ),
        ),

      ),
    );
  }
}