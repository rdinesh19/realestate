import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/colors.dart';

class ThemeCollection {

  ThemeData themeLight = ThemeData(
      brightness: Brightness.light,
      primaryColor: ColorRes.primaryColor,
      scaffoldBackgroundColor: ColorRes.backGround,
      fontFamily: 'Poppins',
      textTheme:   TextTheme(
        displayLarge: TextStyle(
            fontSize: 28.sp,
            letterSpacing: 0,
            fontWeight: FontWeight.w400,
            color: ColorRes.textBlack),
        displayMedium: TextStyle(
            fontSize: 24.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        displaySmall: TextStyle(
            fontSize: 20.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        headlineMedium: TextStyle(
            fontSize: 19.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        headlineSmall: TextStyle(
            fontSize: 18.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        titleLarge: TextStyle(
            fontSize: 17.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        titleMedium: TextStyle(
            fontSize: 16.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        titleSmall: TextStyle(
            fontSize: 14.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        bodyLarge: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12.sp,
          // fontStyle: FontStyle.normal,
          //letterSpacing: 0,
          color: ColorRes.textBlack,
          //letterSpacing: 0.2.w
        ),
        bodyMedium: TextStyle(
            fontSize: 10.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0
          //  letterSpacing: 0.2.w
        ),
        bodySmall: TextStyle(
            fontSize: 8.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.green, //  <-- dark color
        textTheme:
        ButtonTextTheme.primary, //  <-- this auto selects the right color
      ),
      appBarTheme:
      AppBarTheme(backgroundColor: Colors.white.withOpacity(0.5)),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.transparent,
              side: const BorderSide(color: Colors.white))),
      // This makes the visual density adapt to the platform that you run
      // the app on. For desktop platforms, the controls will be smaller and
      // closer together (more dense) than on mobile platforms.
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: ColorScheme(
        // Decide how you want to apply your own custom them, to the MaterialApp
          brightness: Brightness.light,
          primary: ColorRes.primaryColor,
          //using
          secondary: ColorRes.textBlack,
          onSurfaceVariant: Colors.black12,
          onSecondaryContainer: Colors.black26,
          //using_background
          surface: ColorRes.backGround,
          //using_cards
          outline: const Color(0xffE9EDF0),
          onSurface: ColorRes.backGround,
          //using_border
          onError: Colors.white,
          onPrimary: ColorRes.primaryColor,
          onSecondary: ColorRes.textBlack,
          //using
          error: Colors.redAccent)
    );
  ThemeData themeLightSmall = ThemeData(
      brightness: Brightness.light,
      primaryColor: ColorRes.primaryColor,
      //scaffoldBackgroundColor: const Color(0xffFFFFFF),
      scaffoldBackgroundColor: ColorRes.backGround,
      fontFamily: 'Poppins',
      textTheme:   TextTheme(
        displayLarge: TextStyle(
            fontSize: 28.sp,
            letterSpacing: 0,
            fontWeight: FontWeight.w400,
            color: ColorRes.textBlack),
        displayMedium: TextStyle(
            fontSize: 24.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        displaySmall: TextStyle(
            fontSize: 20.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        headlineMedium: TextStyle(
            fontSize: 19.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        headlineSmall: TextStyle(
            fontSize: 18.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        titleLarge: TextStyle(
            fontSize: 17.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        titleMedium: TextStyle(
            fontSize: 16.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        titleSmall: TextStyle(
            fontSize: 14.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        bodyLarge: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12.sp,
          // fontStyle: FontStyle.normal,
          //letterSpacing: 0,
          color: ColorRes.textBlack,
          //letterSpacing: 0.2.w
        ),
        bodyMedium: TextStyle(
            fontSize: 10.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0
          //  letterSpacing: 0.2.w
        ),
        bodySmall: TextStyle(
            fontSize: 8.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.green, //  <-- dark color
        textTheme:
        ButtonTextTheme.primary, //  <-- this auto selects the right color
      ),
      appBarTheme:
      AppBarTheme(backgroundColor: Colors.white.withOpacity(0.5)),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.transparent,
              side: const BorderSide(color: Colors.white))),
      // This makes the visual density adapt to the platform that you run
      // the app on. For desktop platforms, the controls will be smaller and
      // closer together (more dense) than on mobile platforms.
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: ColorScheme(
        // Decide how you want to apply your own custom them, to the MaterialApp
          brightness: Brightness.light,
          primary: ColorRes.primaryColor,
          //using
          secondary: ColorRes.textBlack,
          onSurfaceVariant: Colors.black12,
          onSecondaryContainer: Colors.black26,
          //using_background
          surface: ColorRes.backGround,
          //using_cards
          outline: const Color(0xffE9EDF0),
          onSurface: ColorRes.backGround,
          //using_border
          onError: Colors.white,
          onPrimary: ColorRes.primaryColor,
          onSecondary: ColorRes.textBlack,
          //using
          error: Colors.redAccent)
    // .copyWith(primary: Colors.red,
    // background: ColorRes.backGround),
  );
  ThemeData themeLightLarge = ThemeData(
      brightness: Brightness.light,
      primaryColor: ColorRes.primaryColor,
      //scaffoldBackgroundColor: const Color(0xffFFFFFF),
      scaffoldBackgroundColor: ColorRes.backGround,
      fontFamily: 'Poppins',
      textTheme:   TextTheme(
        displayLarge: TextStyle(
            fontSize: 28.sp,
            letterSpacing: 0,
            fontWeight: FontWeight.w400,
            color: ColorRes.textBlack),
        displayMedium: TextStyle(
            fontSize: 24.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        displaySmall: TextStyle(
            fontSize: 20.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        headlineMedium: TextStyle(
            fontSize: 19.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        headlineSmall: TextStyle(
            fontSize: 18.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        titleLarge: TextStyle(
            fontSize: 17.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        titleMedium: TextStyle(
            fontSize: 16.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        titleSmall: TextStyle(
            fontSize: 14.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
        bodyLarge: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12.sp,
          // fontStyle: FontStyle.normal,
          //letterSpacing: 0,
          color: ColorRes.textBlack,
          //letterSpacing: 0.2.w
        ),
        bodyMedium: TextStyle(
            fontSize: 10.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0
          //  letterSpacing: 0.2.w
        ),
        bodySmall: TextStyle(
            fontSize: 8.sp,
            color: ColorRes.textBlack,
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.green, //  <-- dark color
        textTheme:
        ButtonTextTheme.primary, //  <-- this auto selects the right color
      ),
      appBarTheme:
      AppBarTheme(backgroundColor: Colors.white.withOpacity(0.5)),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.transparent,
              side: const BorderSide(color: Colors.white))),
      // This makes the visual density adapt to the platform that you run
      // the app on. For desktop platforms, the controls will be smaller and
      // closer together (more dense) than on mobile platforms.
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: ColorScheme(
        // Decide how you want to apply your own custom them, to the MaterialApp
          brightness: Brightness.light,
          primary: ColorRes.primaryColor,
          //using
          secondary: ColorRes.textBlack,
          onSurfaceVariant: Colors.black12,
          onSecondaryContainer: Colors.black26,
          //using_background
          surface: ColorRes.backGround,
          //using_cards
          outline: const Color(0xffE9EDF0),
          onSurface: ColorRes.backGround,
          //using_border
          onError: Colors.white,
          onPrimary: ColorRes.primaryColor,
          onSecondary: ColorRes.textBlack,
          //using
          error: Colors.redAccent)
    // .copyWith(primary: Colors.red,
    // background: ColorRes.backGround),
  );
  ThemeData themeDark = ThemeData(
    primaryColor: Colors.green,
    // backgroundColor: Color(0xff1D1D1D),
    // primarySwatch: Colors.blue,

    primarySwatch: Colors.red,
    scaffoldBackgroundColor: const Color(0xff1D1D1D),
    fontFamily: 'Poppins',
     bottomSheetTheme:
    BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0.5)),
    appBarTheme: AppBarTheme(backgroundColor: Colors.white.withOpacity(0.5)),
    textTheme:  TextTheme(
        displayLarge: const TextStyle(fontSize: 27, color: Color(0xffFFFFFF)),
        displayMedium: const TextStyle(fontSize: 24, color: Color(0xffFFFFFF)),
        displaySmall: TextStyle(
            fontSize: 21, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        headlineMedium: TextStyle(
            fontSize: 19, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        headlineSmall: TextStyle(
            fontSize: 18, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        titleLarge: TextStyle(
            fontSize: 17, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        titleMedium: TextStyle(
            fontSize: 16, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        titleSmall: TextStyle(
            fontSize: 14, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        bodyLarge: TextStyle(
            fontSize: 12, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        bodyMedium: TextStyle(
            fontSize: 10, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        bodySmall: TextStyle(
            fontSize: 8, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w)) ,
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: Colors.green,
        //using
        // primary: Color(0xff21B371),//using
        //using
        secondary: Colors.white,
        onSecondaryContainer: Colors.black26,
        onSurfaceVariant: Colors.black12,
        //using_background
        surface: Color(0xff262626),
        onSurface: Color(0xff343232),
        //using_border
        onError: Colors.white,
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        //using
        error: Colors.redAccent),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.green, //  <-- dark color
      textTheme:
      ButtonTextTheme.primary, //  <-- this auto selects the right color
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.transparent,
            side: const BorderSide(color: Colors.white))),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 0.1),
        borderRadius: BorderRadius.circular(12.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 0.1),
        borderRadius: BorderRadius.circular(12.0),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 0.1),
        borderRadius: BorderRadius.circular(12.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 0.1),
        borderRadius: BorderRadius.circular(12.0),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.red, width: 0.5),
        borderRadius: BorderRadius.circular(12.0),
      ),
      isDense: true,
    ),
    // This makes the visual density adapt to the platform that you run
    // the app on. For desktop platforms, the controls will be smaller and
    // closer together (more dense) than on mobile platforms.
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
  ThemeData themeDarkSmall = ThemeData(
    primaryColor: Colors.green,
    // backgroundColor: Color(0xff1D1D1D),
    // primarySwatch: Colors.blue,

    primarySwatch: Colors.red,
    scaffoldBackgroundColor: const Color(0xff1D1D1D),
    fontFamily: 'Poppins',
    bottomSheetTheme:
    BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0.5)),
    appBarTheme: AppBarTheme(backgroundColor: Colors.white.withOpacity(0.5)),
    textTheme:  TextTheme(
        displayLarge: const TextStyle(fontSize: 27, color: Color(0xffFFFFFF)),
        displayMedium: const TextStyle(fontSize: 24, color: Color(0xffFFFFFF)),
        displaySmall: TextStyle(
            fontSize: 21, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        headlineMedium: TextStyle(
            fontSize: 19, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        headlineSmall: TextStyle(
            fontSize: 18, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        titleLarge: TextStyle(
            fontSize: 17, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        titleMedium: TextStyle(
            fontSize: 16, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        titleSmall: TextStyle(
            fontSize: 14, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        bodyLarge: TextStyle(
            fontSize: 12, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        bodyMedium: TextStyle(
            fontSize: 10, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        bodySmall: TextStyle(
            fontSize: 8, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w)) ,
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: Colors.green,
        //using
        // primary: Color(0xff21B371),//using
        //using
        secondary: Colors.white,
        onSecondaryContainer: Colors.black26,
        onSurfaceVariant: Colors.black12,
        //using_background
        surface: Color(0xff262626),
        onSurface: Color(0xff343232),
        //using_border
        onError: Colors.white,
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        //using
        error: Colors.redAccent),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.green, //  <-- dark color
      textTheme:
      ButtonTextTheme.primary, //  <-- this auto selects the right color
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.transparent,
            side: const BorderSide(color: Colors.white))),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 0.1),
        borderRadius: BorderRadius.circular(12.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 0.1),
        borderRadius: BorderRadius.circular(12.0),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 0.1),
        borderRadius: BorderRadius.circular(12.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 0.1),
        borderRadius: BorderRadius.circular(12.0),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.red, width: 0.5),
        borderRadius: BorderRadius.circular(12.0),
      ),
      isDense: true,
    ),
    // This makes the visual density adapt to the platform that you run
    // the app on. For desktop platforms, the controls will be smaller and
    // closer together (more dense) than on mobile platforms.
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
  ThemeData themeDarkLarge = ThemeData(
    primaryColor: Colors.green,
    // backgroundColor: Color(0xff1D1D1D),
    // primarySwatch: Colors.blue,

    primarySwatch: Colors.red,
    scaffoldBackgroundColor: const Color(0xff1D1D1D),
    fontFamily: 'Poppins',
     bottomSheetTheme:
    BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0.5)),
    appBarTheme: AppBarTheme(backgroundColor: Colors.white.withOpacity(0.5)),
    textTheme:  TextTheme(
        displayLarge: const TextStyle(fontSize: 27, color: Color(0xffFFFFFF)),
        displayMedium: const TextStyle(fontSize: 24, color: Color(0xffFFFFFF)),
        displaySmall: TextStyle(
            fontSize: 21, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        headlineMedium: TextStyle(
            fontSize: 19, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        headlineSmall: TextStyle(
            fontSize: 18, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        titleLarge: TextStyle(
            fontSize: 16, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        titleMedium: TextStyle(
            fontSize: 15.sp, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        titleSmall: TextStyle(
            fontSize: 12, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        bodyLarge: TextStyle(
            fontSize: 12, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        bodyMedium: TextStyle(
            fontSize: 10, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w),
        bodySmall: TextStyle(
            fontSize: 8, color: const Color(0xffFFFFFF), letterSpacing: 0.2.w)) ,
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: Colors.green,
        //using
        // primary: Color(0xff21B371),//using
        //using
        secondary: Colors.white,
        onSecondaryContainer: Colors.black26,
        onSurfaceVariant: Colors.black12,
        //using_background
        surface: Color(0xff262626),
        onSurface: Color(0xff343232),
        //using_border
        onError: Colors.white,
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        //using
        error: Colors.redAccent),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.green, //  <-- dark color
      textTheme:
      ButtonTextTheme.primary, //  <-- this auto selects the right color
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.transparent,
            side: const BorderSide(color: Colors.white))),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 0.1),
        borderRadius: BorderRadius.circular(12.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 0.1),
        borderRadius: BorderRadius.circular(12.0),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 0.1),
        borderRadius: BorderRadius.circular(12.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 0.1),
        borderRadius: BorderRadius.circular(12.0),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.red, width: 0.5),
        borderRadius: BorderRadius.circular(12.0),
      ),
      isDense: true,
    ),
    // This makes the visual density adapt to the platform that you run
    // the app on. For desktop platforms, the controls will be smaller and
    // closer together (more dense) than on mobile platforms.
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}


