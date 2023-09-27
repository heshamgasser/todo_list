import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/tabs/setting_tab.dart';
import 'package:todo/tabs/task_tabs.dart';
import 'package:todo/widgets/tasks_widget/add_task_widget.dart';

class HomeProvider extends ChangeNotifier {
  List<Widget> tabs = [TasksTab(), SettingTab()];

  int selectedIndex = 0;

  void changeIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  void showAddTaskBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isDismissible: false,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.r),
          topLeft: Radius.circular(20.r),
        ),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: AddTask(),
        );
      },
    );
    notifyListeners();
  }
}
