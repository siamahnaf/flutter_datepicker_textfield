# Flutter Datepicker Textfield

A flutter datepicker widget with material design styling in a textfield with all customization ability.


- Editable TextField
- Easy customizable
- Easy to use on `StateLess` Widget

## Usage

```dart
DatepickerTextfield(
    validator: validator,
    onChanged: onChanged,
    initialValue: initialValue,
    controller: controller,
    textFieldDecoration: InputDecoration(
    hintText: placeholder,
    hintStyle: TextStyle(
        color: level != null ? AppColors.grayText : AppColors.primaryText,
        fontSize: 14,
    ),
    suffixIcon: const Padding(
        padding: EdgeInsets.only(right: 5, left: 8),
        child: Icon(
        Icons.calendar_month,
        ),
    ),
    filled: false,
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
        width: 1,
        color: AppColors.grayBackground,
        ),
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
        width: 1,
        color: AppColors.grayBackground,
        ),
    ),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
        width: 1,
        color: AppColors.grayBackground,
        ),
    ),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
        width: 1,
        color: AppColors.grayBackground,
        ),
    ),
    contentPadding: EdgeInsets.symmetric(
        vertical: py,
        horizontal: px,
    ),
    ),
),
```

## Properties
- **Validator**: Text field validator
- **onChanged**: To listen date change
- **initialValue**: Initial Value for Date Picker
- **controller**: `DatePIckerController` a controller
- **textFieldDecoration**: Decoration for text field
- **readOnly**: For disable or enable text field
- **firstDate**: First date for calender
- **lastDate**: Date date for calender


## Contribution & Feature Request
Feel to create issue or contribute

## Created By
This project is created by [Siam Ahnaf](https://siamahnaf.com)