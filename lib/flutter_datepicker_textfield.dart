import 'package:flutter/material.dart';
import 'package:flutter_datepicker_textfield/date_picker_controller.dart';

class DatepickerTextfield extends StatefulWidget {
  final String? Function(String?)? validator;
  final Function(DateTime)? onChanged;
  final DateTime? initialValue;
  final DatePickerController? controller;
  final InputDecoration textFieldDecoration;
  final bool readOnly;
  final DateTime? firstDate;
  final DateTime? lastDate;
  const DatepickerTextfield({
    super.key,
    this.validator,
    this.controller,
    this.initialValue,
    this.onChanged,
    required this.textFieldDecoration,
    this.readOnly = true,
    this.firstDate,
    this.lastDate,
  }) : assert(
          initialValue == null || controller == null,
          'You cannot provide both initialValue and controller at the same time.',
        );

  @override
  State<DatepickerTextfield> createState() => _DatepickerTextfieldState();
}

class _DatepickerTextfieldState extends State<DatepickerTextfield> {
  late final TextEditingController _dateController;

  @override
  void initState() {
    super.initState();
    // Initialize the controller with initialValue if provided
    _dateController = TextEditingController(
      text: widget.controller?.selectedDate != null
          ? _formatDate(widget.controller!.selectedDate!)
          : widget.initialValue != null
              ? _formatDate(widget.initialValue!)
              : '',
    );
    if (widget.controller != null) {
      widget.controller!.selectedDate =
          widget.controller!.selectedDate ?? widget.initialValue;
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: widget.controller?.selectedDate ??
          widget.initialValue ??
          DateTime.now(),
      firstDate: widget.firstDate ?? DateTime(1900),
      lastDate: widget.lastDate ?? DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = _formatDate(picked);
        if (widget.controller != null) {
          widget.controller!.selectedDate = picked;
        }
      });
      if (widget.onChanged != null) {
        widget.onChanged!(picked);
      }
    }
  }

  String _formatDate(DateTime date) {
    const List<String> months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    return '${date.day} ${months[date.month - 1]} ${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _dateController,
      validator: widget.validator,
      decoration: widget.textFieldDecoration,
      readOnly: widget.readOnly,
      onTap: () => _selectDate(context),
    );
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }
}
