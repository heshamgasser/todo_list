import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier{

String languageCode = 'en';

void changeLanguage (String selectedLanguage){
  if (selectedLanguage == languageCode) return;
  languageCode = selectedLanguage;
  notifyListeners();
}

ThemeMode appTheme = ThemeMode.system;

void changeTheme (ThemeMode themeMode){
  if (themeMode == appTheme) return;
  appTheme = themeMode;
  notifyListeners();
}



}