import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/views/recent_search.dart';
import 'package:real_estate/views/serviceForYou.dart';
import 'package:real_estate/views/widgets/search_bar.dart';

import '../component/constants/colors.dart';
import '../component/navigation/navigation.dart';
import 'agents.dart';
import 'legal_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backGroundImage(context),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 78.h,),
                Padding(
                  padding:EdgeInsets.only(left: 36.w,right:36.w ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Find your best \nproperty",style:Theme
                          .of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(
                          fontWeight: FontWeight.bold,
                          color: ColorRes.white
                      ),),
                      const Spacer(),
                      Image.asset(
                        'assets/icons/notification_icon.webp',
                        width: 13.w,
                        height: 14.9.h,
                        fit: BoxFit.fill,
                        color: ColorRes.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 22.h,),
                Center(
                  child: Text("Search properties for sale and to rent in the UK",style:Theme
                      .of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(
                      fontWeight: FontWeight.normal,
                      color: ColorRes.white
                  ),),
                ),
        Container(
          height: 28.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: [

            ],
            // border: isSelected ?
            // Border.all(color:isSelectedPrimaryColor?ColorRes.primaryColor:
            // ColorRes.lightBlue.withOpacity(0.5)):null,
            color:ColorRes.white,
          ),

          margin: EdgeInsets.fromLTRB(30.w, 12.h, 30.w, 11.h),
          child:HomeSearchBar(context)
        ),
                Container(
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
                      const RecentSearchListPage(),
                      const ServiceForYouPage(),
                      const AgentsRequest(),
                      const LegalServicePage(),
                      payBill(context),
                      SizedBox(height: 30.h,),
                      needAssistance(context),
                      reviewAndRatings(context)
                    ],
                  ),
                )
              ],
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
height: 800,
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

  Widget needAssistance(BuildContext context) {
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
                height: 55.h,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex:1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                                                   Column(
                                                     mainAxisAlignment: MainAxisAlignment.start,
                                                     crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Need Asistance?',
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                      color: ColorRes.textBlack3B,
                                      fontWeight: FontWeight.w500)),
                              Text('We are a just call away! (+44 7653254678)',
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                      color: ColorRes.textgrey5F,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                          SizedBox(width: 15.w,),
                          Image.asset(
                            'assets/images/telephone-call.webp',
                            width:24,
                            height:24,

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
                    'assets/images/Screenshot__224_-removebg-preview.webp',
                    width:54.08.w,
                    height: 72.h,

                    fit: BoxFit.cover,
                  ),
                ),
              ),

            ],
          )
        ]

    );
  }
  Widget reviewAndRatings(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: ColorRes.lightBlueEc,
        borderRadius: BorderRadius.circular(4),
      ),
      padding: EdgeInsets.only(top: 15.h,),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Image.asset(
            'assets/images/ratings.webp',
            width:33,
            height:33,

            fit: BoxFit.fill,
          ),
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Text('See Reviews & Ratings',
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(
            color: ColorRes.textBlack3B,
            fontWeight: FontWeight.w500)),
    Text('Localities & societies reviewed by residents',
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(
            color: ColorRes.textgrey5F,
            fontWeight: FontWeight.w500)),
  ],
),
          Align(
            alignment: Alignment.topRight,
              child: IconButton(onPressed: (){}, icon:Icon(Icons.close,size: 7,color: Colors.black,)))

        ],
      ),
    );
  }
  Widget payBill(BuildContext context) {
    return Stack(
      children: [
        Container(
          width:MediaQuery.of(context).size.width,

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
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Pay Your Rent & Bills',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(
                      color: ColorRes.textBlack3B,
                      fontWeight: FontWeight.w700)),
              SizedBox(height:7.h,),
              Text('& Earn up to £30k!',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(
                      color: ColorRes.textgrey5F,
                      fontWeight: FontWeight.w500)),
          SizedBox(height: 8.h,),
              GestureDetector(
                onTap: (){
                  Modular.to.pushNamed(Navigation.prideaPage);
                },
                child: Container(
                  padding: EdgeInsets.only(right:14.w,left: 14.w,top:8.h,bottom: 8),
                decoration: BoxDecoration(
                color: ColorRes.lightDarkBlueColor,
                borderRadius: BorderRadius.circular(4),),
                  child:Text('Pay Now',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(
                          color: ColorRes.white,
                          fontWeight: FontWeight.w500))
                ),
              ),
              SizedBox(height:7.h,),
              Text('Safe secure Quick',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(
                      color: ColorRes.textgrey5F,
                      fontWeight: FontWeight.w500)),
              SizedBox(height:26.h,),
            ],
          ),

        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding:EdgeInsets.only(right:43.w ),
            child: Image.asset(
              'assets/images/paybill.webp',
              width:130.w,


              fit: BoxFit.cover,
            ),
          ),
        ),

      ],
    );
  }

}
