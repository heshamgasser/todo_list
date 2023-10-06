import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/network/remote/firebase_function.dart';
import 'package:todo/widgets/tasks_widget/task_widget.dart';

class TasksTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          FutureBuilder(
            future: FirebaseFunctions.getTaskFromFireStore(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Dialog(
                  child: Text(
                    'Something Went Wrong',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                );
              }
              var tasks  = snapshot.data?.docs.map((e) => e.data()).toList() ?? [];
              return Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return TaskItem(tasks[index]);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 44.h,
                    );
                  },
                  itemCount: tasks.length,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
