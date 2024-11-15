import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../component/constants/colors.dart';
class ServiceForYouPage extends StatefulWidget {
  const ServiceForYouPage({super.key});

  @override
  State<ServiceForYouPage> createState() => _ServiceForYouPageState();
}

class _ServiceForYouPageState extends State<ServiceForYouPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: EdgeInsets.only(
            left: 19.w,
            right: 16.w,top:15.h
          ),
          child: Text('RECENT SEARCHES',
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(
                  color: ColorRes.textBlack3B,
                  fontWeight: FontWeight.w500)),
        ),
        Container(
          margin: EdgeInsets.only(right:15.w,left: 16.w,top: 8.h),
          decoration: BoxDecoration(
              color: ColorRes.whiteFC,
              borderRadius: BorderRadius.circular(4),
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

          child: Row(
            children: [Expanded(
              flex: 1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        serviceItem(context,
                            title: 'Home Loan', icon: 'gift_card.webp', onTap: () {

                            }),
                        serviceItem(context,
                            title: 'Sale Agreement', icon: 'gift_card.webp', onTap: () {

                            }),
                        serviceItem(context,
                            title: 'Refer & Earn', icon: 'gift_card.webp', onTap: () {

                            }),

                      ],
                    ),
                    SizedBox(height: 13.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        serviceItem(context,
                            title: 'Legal Services', icon: 'gift_card.webp', onTap: () {

                            }),
                        serviceItem(context,
                            title: 'Home Renovation', icon: 'gift_card.webp', onTap: () {

                            }),
                        serviceItem(context,
                            title: 'AC Service & Repair', icon: 'gift_card.webp', onTap: () {

                            }),

                      ],
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/circle_navigation.webp',
                height: 32.h,
                width: 32.w,
              ),
            ],
          ),
        ),
      ],
    );
  }
  GestureDetector serviceItem(
      BuildContext context, {
        required String title,
        required String icon,
        required Function() onTap,
      }) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        //color: Colors.green,
        width: 74.w,
        height: 67.h,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(

              height: 32.h,
              width: 32.w,
              child: Center(
                child: Image.asset(
                  'assets/images/home_loan.webp',
                  height: 32.h,
                  width: 32.w,
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
              width: 70.w,
              child: Text(title,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: ColorRes.textBlack,
                  ),maxLines: 2,),
            ),
          ],
        ),
      ),
    );
  }
}
