import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../component/constants/colors.dart';
class LegalServicePage extends StatefulWidget {
  const LegalServicePage({super.key});

  @override
  State<LegalServicePage> createState() => _LegalServicePageState();
}

class _LegalServicePageState extends State<LegalServicePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: 19.w,
              right: 16.w,top:15.h,bottom: 8.h
          ),
          child: Text('AGENTS',
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(
                  color: ColorRes.textBlack3B,
                  fontWeight: FontWeight.w500)),
        ),
        Container(
          decoration: BoxDecoration(
              color: ColorRes.lightBlueEc,
              borderRadius: BorderRadius.circular(4),
           ),
          padding: EdgeInsets.only(top: 15.h,),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              serviceItem(context,
                  title: 'Rental Agreement', icon: 'gift_card.webp', onTap: () {

                  }),
              serviceItem(context,
                  title: 'Tenant Verification', icon: 'gift_card.webp', onTap: () {

                  }),
              serviceItem(context,
                  title: 'Sale Agreement', icon: 'gift_card.webp', onTap: () {

                  }),
              serviceItem(context,
                  title: 'Property Legal Service', icon: 'gift_card.webp', onTap: () {

                  }),

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
        width: 37.79.w,
        height: 95.h,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(

              height: 32.h,
              width: 32.w,
              child: Center(
                child: Image.asset(
                  'assets/images/group37.webp',
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
                ),maxLines: 3,),
            ),
          ],
        ),
      ),
    );
  }
}
