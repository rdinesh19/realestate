import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../component/constants/colors.dart';
class AgentsRequest extends StatefulWidget {
  const AgentsRequest({super.key});

  @override
  State<AgentsRequest> createState() => _AgentsRequestState();
}

class _AgentsRequestState extends State<AgentsRequest> {
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
          child: Text('AGENTS',
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(
                  color: ColorRes.textBlack3B,
                  fontWeight: FontWeight.w500)),
        ),
        Stack(
          children: [
            Container(
              width:MediaQuery.of(context).size.width,
              height: 63.h,
              margin: EdgeInsets.only(right:19.w,left: 16.w,top: 12.h),
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
              child:Row(
                children: [
                  Expanded(
                    flex:1,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/mdi_tag-outline.webp',
                          width:20,
                          height: 20,

                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 5.w,),
                        Text('Request property valuation',
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                color: ColorRes.textBlack3B,
                                fontWeight: FontWeight.w500)),
                       SizedBox(width: 15.w,),
                        Image.asset(
                          'assets/icons/arrow_right.webp',
                          width:6,
                          height: 6,

                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:EdgeInsets.only(top: 14.h),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        'assets/images/Ellipse1.webp',
                        width:6.w,
                        height: 6.h,

                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding:EdgeInsets.only(right: 7),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        'assets/images/Ellipse1.webp',
                        width:9.w,
                        height: 9.h,

                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],

              ),

            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding:EdgeInsets.only(right:43.w ),
                child: Image.asset(
                  'assets/images/mask_group.webp',
                  width:81.w,
                  height: 83.66.h,

                  fit: BoxFit.cover,
                ),
              ),
            ),

          ],
        )
      ]

    );
  }
}
