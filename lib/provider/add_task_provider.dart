import 'package:flutter/material.dart';

class AddTaskProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey();

  void formValidate(BuildContext context) {
    if (formKey.currentState!.validate()) {
      Navigator.pop(context);
      notifyListeners();
    }
  }

  void datePickerFunction(BuildContext context, String lang) {
    showDatePicker(
      keyboardType: TextInputType.number,
     
      locale: Locale(lang),
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(
        Duration(days: 365 * 2),
      ),
    );
    notifyListeners();
  }

  void timePickerFunction(BuildContext context) {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    notifyListeners();
  }
}
