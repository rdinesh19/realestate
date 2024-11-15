import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../component/constants/colors.dart';

Widget ProductCardOne(
    BuildContext context,

    {
      required Function() onTap,
    }) {
  return

    Center(
      child: Container(

          width:MediaQuery.of(context).size.width/1.8,height:49.h,
          margin: EdgeInsets.only(right:6.w,),
        decoration: BoxDecoration(
            color: ColorRes.white,

            boxShadow: [
        BoxShadow(
        color: ColorRes.shadow1.withOpacity(0.40), // Color with 40% opacity
        offset: const Offset(10, 10), // Offset of (x=10, y=10)
        blurRadius: 30, // Blur radius of 30
        spreadRadius: 0, // Spread radius of 0
      ),
              const BoxShadow(
                color: Colors.white, // Color with 40% opacity
                offset: Offset(-10, -10), // Offset of (x=10, y=10)
                blurRadius: 30, // Blur radius of 30
                spreadRadius: 0, // Spread radius of 0
              ),
            ]),



        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 43.w,
              height: 49.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child:

                Image.asset(
                  'assets/images/Rectangle_image_home.webp',
                  width: 43.w,
                  height: 49.h,

                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Text("Newyork,North Yorkshire",style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: ColorRes.grey6f,fontWeight: FontWeight.w500,),maxLines:1,textAlign: TextAlign.center,overflow: TextOverflow.clip,),
                    Text("For sale, 1-3 beds",style: Theme.of(context).textTheme.bodySmall!.copyWith(color: ColorRes.textBlack00,fontWeight: FontWeight.w500,),maxLines:1,textAlign: TextAlign.center,overflow: TextOverflow.clip,),

                  ],
                ),
              ),
            )
              ],
        )
        ),
    );
}