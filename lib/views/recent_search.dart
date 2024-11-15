import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/views/product_card/product_card_one.dart';

import '../component/constants/colors.dart';

class RecentSearchListPage extends StatefulWidget {
  const RecentSearchListPage({super.key});

  @override
  State<RecentSearchListPage> createState() => _RecentSearchListPageState();
}

class _RecentSearchListPageState extends State<RecentSearchListPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.only(
        top: 30.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/icons/mdi_recent.webp',
                  width:12.w,
                  height: 12.h,
                  fit: BoxFit.cover,
                  color: ColorRes.textBlack3B,
                ),
SizedBox(width: 5.w,),
                Text('RECENT SEARCHES',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(
                        color: ColorRes.textBlack3B,
                        fontWeight: FontWeight.w500)),
                const Spacer(),
                TextButton(
                  onPressed: () {
                  },
                  child: Text('Clear',
                      style:
                      Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: ColorRes.primaryColor,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                        letterSpacing: -0.32,
                      )),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50.h,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                padding: EdgeInsets.only(
                  left: 16.w,
                  right:  16.w,
                ),
                itemBuilder: (BuildContext context, index) {

                  return   ProductCardOne(context,onTap: () {  });
                }),
          ),
        ],
      ),
    );
  }
}
