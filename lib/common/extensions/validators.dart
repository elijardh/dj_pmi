import 'package:intl/intl.dart';

extension TextFieldValidation on String? {
  /// This method validates a string.
  String? validateString({required String title}) => this == null || this!.trim().isEmpty ? '$title is required' : null;

  /// This methods validates a date
  String? validateDate({required String title}) {
    if (this == null || this!.trim().isEmpty) {
      return '$title is required';
    } else if (DateFormat('dd/MM/yyyy').tryParse(this!) == null) {
      return 'Please type in a valid date';
    }
    return null;
  }

  bool get isValidAccountNumber {
    final RegExp accountNumberRegExp = RegExp(r'^\d{10}$');
    return accountNumberRegExp.hasMatch(this ?? '');
  }

  /// This method validates a Nigerian account number.
  String? validateAccountNumber() {
    if (this == null || this!.trim().isEmpty) {
      return 'Account number is required';
    } else if (!this!.isValidAccountNumber) {
      return 'Invalid account number';
    }
    return null;
  }

  /// This method validates a number.
  String? validateNumber({required String title, bool validateEmptyState = true}) {
    if (this == null || this!.trim().isEmpty) {
      if (!validateEmptyState) return null;
      return '$title is required';
    } else if (!RegExp(r'^[0-9]*$').hasMatch(this!)) {
      return '$title must be a number';
    } else if (num.tryParse(this!) == null) {
      return '$title must be a number';
    }
    return null;
  }

  /// This method validates an email address.
  String? validateEmail() {
    final emailRegExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (this == null || this!.trim().isEmpty) {
      return 'Email address is required';
    } else if (emailRegExp.hasMatch(this!.trim())) {
      return 'Please type in a valid email';
    }
    return null;
  }
}