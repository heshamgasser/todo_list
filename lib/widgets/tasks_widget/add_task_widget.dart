import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:todo/provider/add_task_provider.dart';
import 'package:todo/provider/setting_provider.dart';
import 'package:todo/style/app_colors.dart';
import 'package:todo/widgets/tasks_widget/date_time_container.dart';
import 'package:todo/widgets/tasks_widget/task_elevated_button.dart';
import 'package:todo/widgets/tasks_widget/task_text_form_field.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddTaskProvider(),
      builder: (context, child) {
        var addTaskProvider = Provider.of<AddTaskProvider>(context);
        var settingProvider = Provider.of<SettingProvider>(context);

        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
            child: Form(
              key: addTaskProvider.formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
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
                  TaskTextFormField(
                      labelText: 'Enter Your Task',
                      keyboardAction: TextInputAction.next),
                  SizedBox(height: 30.h),
                  TaskTextFormField(
                      labelText: 'Enter Task Description',
                      keyboardAction: TextInputAction.newline,
                      maxLines: 4),
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
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      DateTimeContainer(dateTimeText: '12:00 PM' , dateTimeFunction: (){
                        addTaskProvider.timePickerFunction(context);
                      },),
                      SizedBox(width: 15.w),
                      DateTimeContainer(dateTimeText: '27/09/2023', dateTimeFunction: (){
                        addTaskProvider.datePickerFunction(context, settingProvider.languageCode);
                      },),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Row(
                    children: [
                      TaskElevatedButton(
                        buttonText: 'Add Task',
                        buttonColor: AppColors.lightTaskColor,
                        buttonFunction: () {
                          addTaskProvider.formValidate(context);
                        },
                      ),
                      SizedBox(width: 15.w),
                      TaskElevatedButton(
                          buttonText: 'Cancel',
                          buttonColor: Colors.red,
                          buttonFunction: () {
                            Navigator.pop(context);
                          }),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
