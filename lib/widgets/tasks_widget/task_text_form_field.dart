import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaskTextFormField extends StatefulWidget {
  String labelText;
  TextInputAction keyboardAction;
  int maxLines;
  TextEditingController controller;

  TaskTextFormField(
      {required this.labelText,
      required this.keyboardAction,
        required this.controller,
      this.maxLines = 1});

  @override
  State<TaskTextFormField> createState() => _TaskTextFormFieldState();
}

class _TaskTextFormFieldState extends State<TaskTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Field Required';
        }
        return null;
      },
      textInputAction: widget.keyboardAction,
      maxLines: widget.maxLines,
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
          labelText: widget.labelText,
          labelStyle: Theme.of(context).textTheme.labelLarge),
    );
  }
}
