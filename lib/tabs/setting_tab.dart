import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:todo/provider/setting_provider.dart';
import 'package:todo/widgets/setting_widget/language_bottom_sheet.dart';
import 'package:todo/widgets/setting_widget/setting_tab_widget.dart';
import 'package:todo/widgets/setting_widget/theme_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SettingTabWidget(
            selectedText: settingProvider.languageCode == 'en'
                ? AppLocalizations.of(context)!.english
                : AppLocalizations.of(context)!.arabic,
            settingOption: LanguageSettings(),
          ),
          SizedBox(height: 30.h),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SettingTabWidget(
            selectedText: settingProvider.appTheme == ThemeMode.system
                ? AppLocalizations.of(context)!.system
                : settingProvider.appTheme == ThemeMode.light
                    ? AppLocalizations.of(context)!.lightTheme
                    : AppLocalizations.of(context)!.darkTheme,
            settingOption: ThemeSettings(),
          ),
        ],
      ),
    );
  }
}
