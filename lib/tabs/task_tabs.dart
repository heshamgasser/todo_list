import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:todo/network/remote/firebase_function.dart';
import 'package:todo/provider/add_task_provider.dart';
import 'package:todo/widgets/tasks_widget/task_widget.dart';

class TasksTab extends StatelessWidget {
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
                initialDate: pro.tabSelectedDate,
                firstDate: DateTime.now().subtract(
                  Duration(days: 365 * 2),
                ),
                lastDate: DateTime.now().add(
                  Duration(days: 365 * 2),
                ),
                onDateSelected: (date) {
                  pro.changeTabDate(date);
                },
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
              StreamBuilder(
                stream:
                    FirebaseFunctions.getTaskFromFireStore(pro.tabSelectedDate),
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

                  var tasks =
                      snapshot.data?.docs.map((e) => e.data()).toList() ?? [];
                  return tasks.isEmpty
                      ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'There is No Task Right Now',
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                            SizedBox(height: 10.h),
                            Text('Press + to Add Tasks',
                                style: Theme.of(context).textTheme.titleMedium)
                          ],
                        )
                      : Expanded(
                          child: ListView.separated(
                            itemBuilder: (context, index) {
                              return TaskItem(tasks[index]);
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 22 .h,
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
      },
    );
  }
}
