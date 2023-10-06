import 'package:flutter/material.dart';
import 'package:todo/models/task_model.dart';
import 'package:todo/network/remote/firebase_function.dart';

class AddTaskProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey();
  DateTime? date = DateUtils.dateOnly(DateTime.now());
  TimeOfDay? time = TimeOfDay.now();

  TextEditingController taskTitle = TextEditingController();
  TextEditingController taskDescription = TextEditingController();
  bool taskDone = false;

  void changeTaskStatus() {
    taskDone = !taskDone;
    notifyListeners();
  }


  void addTaskToFireBase(BuildContext context) {
    if (formKey.currentState!.validate()) {
      TaskModel taskModel = TaskModel(title: taskTitle.text,
          description: taskDescription.text,
          date: date!.microsecondsSinceEpoch,
          time: time!.format(context),
          status: taskDone);
      FirebaseFunctions.addTaskToFireStore(taskModel);
      Navigator.pop(context);
      notifyListeners();
    }
  }




  void datePickerFunction(BuildContext context, String lang) async {
    DateTime? selectedDate = await showDatePicker(
      keyboardType: TextInputType.number,
      locale: Locale(lang),
      context: context,

      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(
        Duration(days: 365 * 2),
      ),
    );
    date = selectedDate ?? DateUtils.dateOnly(DateTime.now());
    notifyListeners();
  }

  void timePickerFunction(BuildContext context) async {
    TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    time = selectedTime ?? TimeOfDay.now();
    notifyListeners();
  }
}
