import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/screens/home_screen.dart';
import 'package:todo/style/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main (){
  runApp(ScreenUtilInit(
    designSize: Size(412, 870),
      child: Todo(),),);
}

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(context) => HomeScreen(),
      },

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,

      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('es'), // Spanish
      ],


    );
  }
}

