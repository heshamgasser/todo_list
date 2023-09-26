import 'package:flutter/material.dart';
import 'package:todo/tabs/setting_tab.dart';
import 'package:todo/tabs/task_tabs.dart';

class HomeProvider extends ChangeNotifier{
  List<Widget> tabs = [TasksTab(), SettingTab()];

  int selectedIndex = 0;


  void changeIndex (int index){
    selectedIndex = index;
    notifyListeners();
  }
}