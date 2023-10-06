import 'package:flutter/material.dart';
import 'package:todo/models/task_model.dart';

class EditTaskProvider extends ChangeNotifier{

  TextEditingController updatedTitle = TextEditingController();
  TextEditingController updatedDescription = TextEditingController();

  DateTime? date = DateUtils.dateOnly(DateTime.now());
  TimeOfDay? time = TimeOfDay.now();

  // void updatedTaskData (TaskModel taskModel){
  //   updatedTitle.text = taskModel.title;
  //   updatedDescription.text = taskModel.description;
  //   date = taskModel.date
  //
  //
  // }



}