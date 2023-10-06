import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_model.dart';
import 'package:todo/network/remote/firebase_function.dart';
import 'package:todo/provider/add_task_provider.dart';
import 'package:todo/widgets/tasks_widget/edit_task_widget.dart';

import '../../style/app_colors.dart';

class TaskItem extends StatelessWidget {
  TaskModel task;

  TaskItem(this.task);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddTaskProvider(),
      builder: (context, child) {
        var pro = Provider.of<AddTaskProvider>(context);
        return Slidable(
          startActionPane: ActionPane(
            motion: ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (context) {
                  FirebaseFunctions.deleteTaskFromFireBase(task.id);
                },
                backgroundColor: Color(0xFFFE4A49),
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete',
                borderRadius: BorderRadius.all(
                  Radius.circular(20.r),
                ),
              ),
            ],
          ),

          endActionPane: ActionPane(
            motion: ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (context) {
                  showModalBottomSheet(context: context, builder: (context) {
                    return EditTask(task);
                  },);
                },
                backgroundColor: AppColors.lightTaskColor,
                foregroundColor: Colors.white,
                icon: Icons.edit,
                label: 'Edit',
                borderRadius: BorderRadius.all(
                  Radius.circular(20.r),
                ),
              ),
            ],
          ),
          child: SizedBox(
            height: 115.h,
            child: ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),
              ),
              leading: Container(
                alignment: AlignmentDirectional.topCenter,
                height: 62.h,
                width: 4.w,
                color: task.status
                    ? AppColors.lightTaskDoneColor
                    : AppColors.lightTaskColor,
              ),
              title: Text(
                task.title,
                style: task.status
                    ? Theme.of(context).textTheme.headlineMedium
                    : Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    task.description,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: task.status
                        ? Theme.of(context).textTheme.headlineMedium
                        : Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    children: [
                      Icon(
                        Icons.alarm,
                        size: 14.r,
                        color: AppColors.lightDateColor,
                      ),
                      SizedBox(
                        width: 9.w,
                      ),
                      Text(
                        task.time,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ],
                  ),
                ],
              ),
              isThreeLine: true,
              horizontalTitleGap: 5.w,
              trailing: InkWell(
                onTap: () {
                  task.status = !task.status;
                  FirebaseFunctions.updateTaskInFireBase(task.id, task);
                },
                child: task.status
                    ? Text(
                        ' Done!',
                        style: Theme.of(context).textTheme.headlineMedium,
                      )
                    : Container(
                        width: 69.w,
                        height: 34.h,
                        decoration: BoxDecoration(
                          color: AppColors.lightTaskColor,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Icon(
                          Icons.done,
                          size: 30.r,
                          color: Colors.white,
                        ),
                      ),
              ),
            ),
          ),
        );
      },
    );
  }
}
