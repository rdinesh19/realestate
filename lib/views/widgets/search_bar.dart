import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../component/constants/colors.dart';


Widget HomeSearchBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment:CrossAxisAlignment.center ,
      children: [

        Padding(
          padding:EdgeInsets.fromLTRB(20.w, 4.h, 15.w, 4.h),
          child: DropdownButton<String>(
            underline: SizedBox.shrink(),

            value: "Buy",
            items: ["Buy", "Rent"].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value,style:Theme
                    .of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(
                    fontWeight: FontWeight.normal,
                    color: ColorRes.lightDarkBlueColor66
                ),),
              );
            }).toList(),
            isDense: true,
            onChanged: (String? value) {},
              icon: Image.asset(
                'assets/icons/dropdown_icon.webp',
                width:7,
          height: 4,
          color: ColorRes.lightDarkBlueColor,
                fit: BoxFit.cover,
              ), // Custom icon


          ),
        ),
        Container(height: MediaQuery.of(context).size.height,
        width: 1,
          color: ColorRes.shadow1,
        ),
        Expanded(
          child: Padding(
            padding:EdgeInsets.fromLTRB(10.w, 4.h, 0.w, 10.h),
            child: TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search e.g. Oxford or NW3",
                hintStyle:Theme
                    .of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(
              fontWeight: FontWeight.normal,
              color: ColorRes.lightDarkBlueColor66,
                  overflow: TextOverflow.ellipsis,
              ),
                           ),
            ),
          ),
        ),
        Padding(
          padding:EdgeInsets.fromLTRB(20.w, 5.h, 16.w, 4.h),
          child: Image.asset(
            'assets/icons/prime_search.webp',
            width:17,
            height: 17,
            color: ColorRes.lightDarkBlueColor,
            fit: BoxFit.cover,
          ),
        ), //
      ],
    );
  }
