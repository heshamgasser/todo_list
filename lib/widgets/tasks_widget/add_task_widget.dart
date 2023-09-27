import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/style/app_colors.dart';
import 'package:todo/widgets/tasks_widget/date_time_container.dart';
import 'package:todo/widgets/tasks_widget/task_elevated_button.dart';
import 'package:todo/widgets/tasks_widget/task_text_form_field.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Add New Task',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          SizedBox(height: 40.h),
          TaskTextFormField('Enter Your Task'),
          SizedBox(height: 30.h),
          Row(
            children: [
              Expanded(
                  child: Text(
                'Select Time',
                style: Theme.of(context).textTheme.displayLarge,
              )),
              SizedBox(width: 15.w),
              Expanded(
                  child: Text(
                'Select Date',
                style: Theme.of(context).textTheme.displayLarge,
              )),
            ],
          ),
          Row(
            children: [
              DateTimeContainer('12:00 PM'),
              SizedBox(width: 15.w),
              DateTimeContainer('27/09/2023'),
            ],
          ),
          SizedBox(height: 30.h),
          Row(
            children: [
              TaskElevatedButton(
                buttonText: 'Add Task',
                buttonColor: AppColors.lightTaskColor,
                buttonFunction: () {},
              ),
              SizedBox(width: 15.w),
              TaskElevatedButton(
                  buttonText: 'Cancel',
                  buttonColor: Colors.red,
                  buttonFunction: (){
                    Navigator.pop(context);
                  }

              ),
            ],
          ),
        ],
      ),
    );
  }
}
