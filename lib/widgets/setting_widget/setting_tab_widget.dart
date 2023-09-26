import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingTabWidget extends StatelessWidget {
  String selectedText;
  Widget settingOption;


  SettingTabWidget({required this.selectedText,required this.settingOption});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
          ),
          context: context,
          builder: (context) {
            return settingOption;
          },
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.h),
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 10.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(color: Color(0xFF5D9CEC),),),
        child: Text(
          selectedText,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }
}
