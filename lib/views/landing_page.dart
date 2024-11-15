import 'dart:io';
import 'package:flutter/material.dart';
import 'package:real_estate/views/prideaPage.dart';


import '../component/constants/colors.dart';
import 'bottomNavigationBar/motionTabBar.dart';
import 'bottomNavigationBar/motionTabBarController.dart';
import 'home_page.dart';


 class OnBoardingPage extends StatefulWidget {
   const OnBoardingPage({super.key});

   @override
   State<OnBoardingPage> createState() => _OnBoardingPageState();
 }

 class _OnBoardingPageState extends State<OnBoardingPage>with TickerProviderStateMixin {
   MotionTabBarController? _motionTabBarController;
   @override
   void initState() {
     super.initState();

     //// use "MotionTabBarController" to replace with "TabController", if you need to programmatically change the tab
     _motionTabBarController = MotionTabBarController(
       initialIndex: 1,
       length: 4,
       vsync: this,
     );
   }

   @override
   void dispose() {
     super.dispose();
     _motionTabBarController!.dispose();
   }
     @override
     Widget build(BuildContext context) {
       return Scaffold(
                 bottomNavigationBar: MotionTabBar(
           controller: _motionTabBarController, // Add this controller if you need to change your tab programmatically
           initialSelectedTab: "Home",
           useSafeArea: true, // default: true, apply safe area wrapper
           labels: const ["Home", "Saved", "Enquiry", "Profile"],
           icons: const ['assets/icons/home.webp','assets/icons/saved.webp','assets/icons/enquiry.webp','assets/icons/profile.webp'],
           tabSize: 60,
           tabBarHeight:65,
           textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
               color: ColorRes.white,
               fontWeight: FontWeight.w500),
           tabIconColor:  ColorRes.white,
           tabIconSize: 14.04,
           tabIconSelectedSize: 17.36,
           tabSelectedColor: ColorRes.lightDarkBlueColor,
           tabIconSelectedColor: Colors.white,
           tabBarColor: ColorRes.lightDarkBlueColor,
           onTabItemSelected: (int value) {
             setState(() {
               _motionTabBarController!.index = value;
             });
           },
         ),
         body: TabBarView(
           physics: const NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
           controller: _motionTabBarController,
           children: const <Widget>[
             HomePage(),

                ],
         ),
       );
     }

 }
