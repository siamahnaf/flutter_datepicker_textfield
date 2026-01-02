import 'package:flutter/material.dart';
import 'package:flutter_datepicker_textfield/flutter_datepicker_textfield.dart';

class DatePickerExample extends StatelessWidget {
  final String? Function(String?)? validator;
  final Function(DateTime)? onChanged;
  final DateTime? initialValue;
  final DatePickerController? controller;
  const DatePickerExample({
    super.key,
    this.controller,
    this.initialValue,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return DatepickerTextfield(
      validator: validator,
      onChanged: onChanged,
      initialValue: initialValue,
      controller: controller,
      textFieldDecoration: InputDecoration(
        hintText: '',
        suffixIcon: const Padding(
          padding: EdgeInsets.only(right: 5, left: 8),
          child: Icon(
            Icons.calendar_month,
          ),
        ),
        filled: false,
      ),
    );
  }
}
