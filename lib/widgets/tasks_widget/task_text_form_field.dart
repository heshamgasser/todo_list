import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaskTextFormField extends StatelessWidget {
  String labelText;
  TextInputAction keyboardAction;
  int maxLines;

  TaskTextFormField(
      {required this.labelText,
      required this.keyboardAction,
      this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Field Required';
        }
        return null;
      },
      textInputAction: keyboardAction,
      maxLines: maxLines,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: BorderSide(
              color: Color(0xFF5D9CEC),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: BorderSide(
              color: Color(0xFF5D9CEC),
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: BorderSide(
              color: Color(0xFF5D9CEC),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          labelText: labelText,
          labelStyle: Theme.of(context).textTheme.labelLarge),
    );
  }
}
