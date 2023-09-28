import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:todo/provider/add_task_provider.dart';
import 'package:todo/style/app_colors.dart';

class TasksTab extends StatelessWidget {
  const TasksTab({super.key});

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => AddTaskProvider(),
      builder: (context, child) {
        var pro = Provider.of<AddTaskProvider>(context);

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
          child: Column(
            children: [
              CalendarTimeline(
                initialDate: DateTime.now(),
                firstDate: DateTime.now().subtract(
                  Duration(days: 365 * 2),
                ),
                lastDate: DateTime.now().add(
                  Duration(days: 365 * 2),
                ),
                onDateSelected: (date) => print(date),
                leftMargin: 20,
                monthColor: Colors.blueGrey,
                dayColor: Colors.teal[200],
                activeDayColor: Colors.white,
                activeBackgroundDayColor: Colors.redAccent[100],
                dotsColor: Color(0xFF333A47),
                selectableDayPredicate: (date) => date.day != 23,
                locale: 'en_ISO',
              ),
              SizedBox(height: 20.h),
              ListTile(
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
                leading: SizedBox(
                  height: 62.h,
                  child: VerticalDivider(
                    color: Colors.black,
                    thickness: 4.w,
                  ),
                ),
                title: Text(
                  'Learning Flutter',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                trailing: InkWell(
                  onTap: () {
                    pro.changeTaskStatus();
                  },
                  child: pro.taskDone ? Text('Done!', style: Theme.of(context).textTheme.headlineMedium,) : Container(
                    width: 69.w,
                    height: 34.h,
                    decoration: BoxDecoration(
                      color: AppColors.lightTaskColor,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Icon(Icons.done, size: 30.r, color: Colors.white,),
                  ),
                ),
                subtitle: Row(
                  children: [
                    Icon(Icons.alarm , size: 14.r, color: AppColors.lightDateColor,),
                    SizedBox(width: 9.w,),
                    Text(
                      '10:30 AM',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ],
                ),
                isThreeLine: true,
                horizontalTitleGap:5.w,
              ),

            ],
          ),
        );
      },

    );
  }
}
