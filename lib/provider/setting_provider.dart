import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingProvider extends ChangeNotifier {
  String languageCode = 'en';

  void changeLanguage(String selectedLanguage) async {
    if (selectedLanguage == languageCode) return;
    languageCode = selectedLanguage;
    notifyListeners();
    final SharedPreferences languagePrefs =
        await SharedPreferences.getInstance();
    languagePrefs.setString('lang', languageCode);
  }

  ThemeMode appTheme = ThemeMode.system;

  void changeTheme(ThemeMode themeMode) async {
    if (themeMode == appTheme) return;
    appTheme = themeMode;
    notifyListeners();
    final SharedPreferences themePrefs = await SharedPreferences.getInstance();
    themePrefs.setString(
        'theme',
        appTheme == ThemeMode.system
            ? 'system'
            : appTheme == ThemeMode.light
                ? 'light'
                : 'dark');
  }

  void savedSetting() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String lang = prefs.getString('lang') ?? 'en';
    String theme = prefs.getString('theme') ?? 'system';

    changeLanguage(lang);
    changeTheme(theme == 'system'
        ? ThemeMode.system
        : theme == 'light'
            ? ThemeMode.light
            : ThemeMode.dark);
  }
}
