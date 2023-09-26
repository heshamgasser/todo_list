import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:todo/provider/setting_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeSettings extends StatelessWidget {
  const ThemeSettings({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<SettingProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.displayLarge,
          )),
          Divider(),
          SizedBox(height: 40.h),
          InkWell(
            onTap: () {
              themeProvider.changeTheme(ThemeMode.system);
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.system,
                  style: themeProvider.appTheme == ThemeMode.system
                      ? Theme.of(context).textTheme.displayMedium!.copyWith(
                            color: Color(0xFF5D9CEC),
                          )
                      : Theme.of(context).textTheme.displayMedium,
                ),
                Spacer(),
                Visibility(
                  visible: themeProvider.appTheme == ThemeMode.system ? true : false,
                  child: Icon(
                    Icons.done,
                    size: 30.r,
                    color: Color(0xFF5D9CEC),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 40.h),
          InkWell(
            onTap: () {
              themeProvider.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.lightTheme,
                  style: themeProvider.appTheme == ThemeMode.light
                      ? Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: Color(0xFF5D9CEC),
                  )
                      : Theme.of(context).textTheme.displayMedium,
                ),
                Spacer(),
                Visibility(
                  visible: themeProvider.appTheme == ThemeMode.light ? true : false,
                  child: Icon(
                    Icons.done,
                    size: 30.r,
                    color: Color(0xFF5D9CEC),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 40.h),
          InkWell(
            onTap: () {
              themeProvider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.darkTheme,
                  style: themeProvider.appTheme == ThemeMode.dark
                      ? Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: Color(0xFF5D9CEC),
                  )
                      : Theme.of(context).textTheme.displayMedium,
                ),
                Spacer(),
                Visibility(
                  visible: themeProvider.appTheme == ThemeMode.dark ? true : false,
                  child: Icon(
                    Icons.done,
                    size: 30.r,
                    color: Color(0xFF5D9CEC),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
