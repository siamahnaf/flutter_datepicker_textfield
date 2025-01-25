import 'package:flutter/foundation.dart';

class DatePickerController extends ChangeNotifier {
  DateTime? selectedDate;

  DatePickerController({this.selectedDate});
}
