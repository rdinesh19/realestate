import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../component/constants/colors.dart';
import 'BHKselectionPage.dart';
import 'customDropdownRadius.dart';
class PrideaPage extends StatefulWidget {
  const PrideaPage({super.key});

  @override
  State<PrideaPage> createState() => _PrideaPageState();
}

class _PrideaPageState extends State<PrideaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Stack(
          children: [
            backGroundImage(context),
Padding(
  padding: const EdgeInsets.only(left: 16,right: 16,top: 50),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back,color: Colors.white,),),
      Spacer(),
      Image.asset(
        'assets/images/group_pride.webp',
        width: 107,
        height:32.h,

        fit: BoxFit.cover,
      ),
      Spacer()

    ],
  ),
),
            Container(
              margin: EdgeInsets.only(top: 200),
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              decoration:BoxDecoration(
                  color: ColorRes.whitef9,
                  borderRadius: const BorderRadius.only(topLeft:Radius.circular(42),topRight:Radius.circular(42) )
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
SizedBox(height: 50,),
                  CustomDropdown(),
                  BHKSelection(),
                  SizedBox(height: 100,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Search Button
                      Expanded(
                        child: Container(
                          height: 50,
                          color: Color(0xFF2D3252), // Dark blue color
                          child: Center(
                            child: Text(
                              "SEARCH",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Clear Button
                      Expanded(
                        child: Container(
                          height: 50,
                          color: Colors.white, // White background
                          child: Center(
                            child: Text(
                              "CLEAR",
                              style: TextStyle(
                                color: Color(0xFF2D3252), // Dark blue color for text
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );


  }
  Widget backGroundImage(BuildContext context) {

    return   Stack(
      children: [
        Image.asset(
          'assets/images/home_background.webp',
          width: double.infinity,
          height:800.h,
          fit: BoxFit.cover,
        ),
        Image.asset(
          'assets/images/home_background_2.webp',
          width: double.infinity,
          height: 106.h,
          fit: BoxFit.cover,
        ),
        Image.asset(
          'assets/images/home_background_3.webp',
          width: double.infinity,
          height: 114.h,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              'assets/images/home_background_circle.webp',
              width: 35.19.w,
              height: 35.19.h,

              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding:EdgeInsets.only(top: 40.h,right: 40.w),
          child: Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              'assets/images/home_background_small_circle.webp',
              width: 18.w,
              height: 18.31.h,

              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding:EdgeInsets.only(top: 154.h),
          child: Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              'assets/images/home_background_halfcircle.webp',
              width: 45.w,
              height: 74.h,
            ),
          ),
        ),
      ],
    );
  }
}
