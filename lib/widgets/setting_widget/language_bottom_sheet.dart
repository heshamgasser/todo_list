import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:todo/provider/setting_provider.dart';

class LanguageSettings extends StatelessWidget {
  const LanguageSettings({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Text(
            'Language',
            style: Theme.of(context).textTheme.displayLarge,
          )),
          Divider(),
          SizedBox(height: 40.h),
          InkWell(
            onTap: () {
              provider.changeLanguage('en');
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Text(
                  'English',
                  style: provider.languageCode == 'en'
                      ? Theme.of(context).textTheme.displayMedium!.copyWith(
                            color: Color(0xFF5D9CEC),
                          )
                      : Theme.of(context).textTheme.displayMedium,
                ),
                Spacer(),
                Visibility(
                  visible: provider.languageCode == 'en' ? true : false,
                  child: Icon(
                    Icons.done,
                    size: 30.r,
                    color: Color(0xFF5D9CEC),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.h),
          InkWell(
            onTap: () {
              provider.changeLanguage('ar');
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Text(
                  'Arabic',
                  style: provider.languageCode == 'ar'
                      ? Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: Color(0xFF5D9CEC),
                  )
                      : Theme.of(context).textTheme.displayMedium,
                ),
                Spacer(),
                Visibility(
                  visible: provider.languageCode == 'ar' ? true : false,
                  child: Icon(
                    Icons.done,
                    size: 30.r,
                    color: Color(0xFF5D9CEC),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
