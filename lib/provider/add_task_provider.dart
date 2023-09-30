import 'package:flutter/material.dart';
import 'package:todo/models/task_model.dart';

class AddTaskProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey();

  DateTime? date = DateUtils.dateOnly(DateTime.now());
  TimeOfDay? time = TimeOfDay.now();




  bool taskDone = false;

  void changeTaskStatus (){
    taskDone = !taskDone;
    notifyListeners();
  }


  void formValidate(BuildContext context) {
    if (formKey.currentState!.validate()) {
      Navigator.pop(context);
      
      notifyListeners();
    }
  }

  void datePickerFunction(BuildContext context, String lang) async{
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
    date = selectedDate;
    notifyListeners();
  }

  void timePickerFunction(BuildContext context) async{
    TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    time = selectedTime;
    notifyListeners();
  }
}
