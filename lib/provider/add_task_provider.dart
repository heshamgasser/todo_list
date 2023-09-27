import 'package:flutter/material.dart';

class AddTaskProvider extends ChangeNotifier{
  GlobalKey<FormState> formKey = GlobalKey();

  void formValidate(BuildContext context){
    if(formKey.currentState!.validate()){
      Navigator.pop(context);
      notifyListeners();
    }
  }


}