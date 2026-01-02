<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/siamahnaf/assets-kit/main/logo/logo-white.png">
  <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/siamahnaf/assets-kit/main/logo/logo-black.png">
  <img alt="Siam Ahnaf" src="https://raw.githubusercontent.com/siamahnaf/assets-kit/main/logo/logo-black.png" height="auto" width="240">
</picture>

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
- **validator**: Text field validator
- **onChanged**: To listen date change
- **initialValue**: Initial Value for Date Picker
- **controller**: `DatePIckerController` a controller
- **textFieldDecoration**: Decoration for text field
- **readOnly**: For disable or enable text field
- **firstDate**: First date for calender
- **lastDate**: Date date for calender


## Contribution & Feature Request
Feel to create issue or contribute

## Create By Siam Ahnaf
<div style="display: flex; align-items: center; gap: 3px;">
<a href="https://wa.me/8801611994403"><img src="https://raw.githubusercontent.com/siamahnaf/assets-kit/main/icons/whatsapp.png" width="40" height="40"></a>
<a href="https://siamahnaf.com/" style="margin-right: 8px"><img src="https://raw.githubusercontent.com/siamahnaf/assets-kit/main/icons/web.png" width="40" height="40"></a>
<a href="https://www.linkedin.com/in/siamahnaf/" style="margin-right: 8px"><img src="https://raw.githubusercontent.com/siamahnaf/assets-kit/main/icons/linkedin.png" width="40" height="40"></a>
<a href="https://x.com/siamahnaf198" style="margin-right: 8px"><img src="https://raw.githubusercontent.com/siamahnaf/assets-kit/main/icons/x.png" width="40" height="40"></a>
<a href="https://www.facebook.com/siamahnaf198/" style="margin-right: 8px"><img src="https://raw.githubusercontent.com/siamahnaf/assets-kit/main/icons/facebook.png" width="40" height="40"></a>
<a href="https://t.me/siamahnaf198" style="margin-right: 8px"><img src="https://raw.githubusercontent.com/siamahnaf/assets-kit/main/icons/telegram.png" width="40" height="40"></a>
<a href="https://www.npmjs.com/~siamahnaf" style="margin-right: 8px"><img src="https://raw.githubusercontent.com/siamahnaf/assets-kit/main/icons/npm.png" width="40" height="40"></a>
</div>


------------

<p align="center" color="red"><a href="https://www.siamahnaf.com/">www.siamahnaf.com</a></p>