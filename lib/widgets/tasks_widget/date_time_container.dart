import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style/app_colors.dart';

class DateTimeContainer extends StatelessWidget {
  String dateTimeText;


  DateTimeContainer(this.dateTimeText);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 16.h),
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.lightTaskColor),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Text(dateTimeText, style: Theme.of(context).textTheme.displaySmall,),
      ),
    );
  }
}
