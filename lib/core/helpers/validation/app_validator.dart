import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/helpers/validation/regex_validation.dart';

class AppValidator {
  static String? validateEmptyField(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return context.tr(LocaleKeys.fieldCannotBeEmpty);
    }
    return null;
  }

  static String? validateEmail(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return context.tr(LocaleKeys.fieldCannotBeEmpty);
    } else if (!RegexValidations.isEmailValid(value)) {
      return context.tr(LocaleKeys.enterValidEmail);
    }
    return null;
  }
}
