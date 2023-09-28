import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/style/app_colors.dart';
import 'package:todo/style/app_text.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
          color: Color(0xFF5D9CEC),
          iconTheme: IconThemeData(color: Colors.white, size: 30.r),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20.r),
              bottomLeft: Radius.circular(20.r),
            ),
          ),
          elevation: 0,
          centerTitle: true,
          toolbarHeight: 157.h),
      brightness: Brightness.light,
      primaryColor: Colors.black,
      secondaryHeaderColor: Colors.white,
      textTheme: TextTheme(
        titleLarge: AppText.lightAppBarTitle,
        displayLarge: AppText.lightAddTaskTitleFont,
        displayMedium: AppText.lightAddTaskBodyFont,
        displaySmall: AppText.lightTimeFont,
        labelLarge: AppText.labelFont,
        headlineLarge: AppText.taskFont,
        headlineMedium: AppText.taskDoneFont,
      ),
      scaffoldBackgroundColor: AppColors.lightBackgroundColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Color(0xFF5D9CEC),
        unselectedItemColor: Color(0xFFC8C9CB),
      ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF5D9CEC),

    ),

    dividerTheme: DividerThemeData(
      color: Color(0xFF5D9CEC),
      thickness: 3.r,
      indent: 50.w,
      endIndent: 50.w
    ),


     );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    secondaryHeaderColor: AppColors.darkBottomNavigationBarColor,

    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white, size: 30.r),
        color: Color(0xFF5D9CEC),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20.r),
            bottomLeft: Radius.circular(20.r),
          ),
        ),
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 157.h),
    textTheme: TextTheme(
      titleLarge: AppText.darkAppBarTitle,
      displayLarge: AppText.darkAddTaskTitleFont,
      displayMedium: AppText.darkAddTaskBodyFont,
      displaySmall: AppText.darkTimeFont,
      labelLarge: AppText.labelFont,
      headlineLarge: AppText.taskFont,
      headlineMedium: AppText.taskDoneFont,
    ),
    scaffoldBackgroundColor: AppColors.darkBackgroundColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Color(0xFF5D9CEC),
      unselectedItemColor: Color(0xFFC8C9CB),
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF5D9CEC),

    ),
  );
}
