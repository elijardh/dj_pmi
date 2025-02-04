import 'package:intl/intl.dart';

/// Validates if a string is not empty.
String? validateString(String? value, {required String title}) {
  return (value == null || value.trim().isEmpty) ? '$title is required' : null;
}

/// Validates if a string is a valid date in 'dd/MM/yyyy' format.
String? validateDate(String? value, {required String title}) {
  if (value == null || value.trim().isEmpty) {
    return '$title is required';
  } else if (DateFormat('dd/MM/yyyy').tryParse(value) == null) {
    return 'Please type in a valid date';
  }
  return null;
}

/// Checks if a string is a valid Nigerian account number (10 digits).
bool isValidAccountNumber(String? value) {
  final RegExp accountNumberRegExp = RegExp(r'^\d{10}$');
  return accountNumberRegExp.hasMatch(value ?? '');
}

/// Validates a Nigerian account number.
String? validateAccountNumber(String? value) {
  if (value == null || value.trim().isEmpty) {
    return 'Account number is required';
  } else if (!isValidAccountNumber(value)) {
    return 'Invalid account number';
  }
  return null;
}

/// Validates if a string is a valid number.
String? validateNumber(String? value,
    {required String title, bool validateEmptyState = true}) {
  if (value == null || value.trim().isEmpty) {
    return validateEmptyState ? '$title is required' : null;
  } else if (!RegExp(r'^[0-9]*$').hasMatch(value)) {
    return '$title must be a number';
  } else if (num.tryParse(value) == null) {
    return '$title must be a number';
  }
  return null;
}

/// Validates if a string is a valid email address.
String? validateEmail(String? value) {
  final emailRegExp =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
  if (value == null || value.trim().isEmpty) {
    return 'Email address is required';
  } else if (!emailRegExp.hasMatch(value.trim())) {
    return 'Please type in a valid email';
  }
  return null;
}
