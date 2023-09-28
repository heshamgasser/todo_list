import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style/app_colors.dart';

class TaskElevatedButton extends StatelessWidget {
  String buttonText;
  Color buttonColor;
  Function buttonFunction;

  TaskElevatedButton(
      {required this.buttonText,
      required this.buttonColor,
      required this.buttonFunction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
          backgroundColor: buttonColor,
        ),
        onPressed: () {
          buttonFunction();
        },
        child: Text(
          buttonText,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
