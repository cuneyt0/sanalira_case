import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'register_viewmodel.g.dart';

class RegisterViewModel = _RegisterViewModelBase with _$RegisterViewModel;

abstract class _RegisterViewModelBase with Store {
  @observable
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @observable
  TextEditingController? nameController = TextEditingController();
  @observable
  TextEditingController? lastNameController = TextEditingController();
  @observable
  TextEditingController? emailController = TextEditingController();

  @action
  String? nameAndLastNameValidation(String value) {
    if (value.isEmpty == true) {
      return 'Boş geçilemez';
    } else if (value.length < 3) {
      return 'Minimum 3 karakter girmelisiniz';
    } else if (value.length > 50) {
      return 'Maximum 50 karakter girmelisiniz';
    } else {
      return null;
    }
  }

  @action
  String? eMailValidation(String value) {
    if (value.isEmpty == true) {
      return 'Boş geçilemez';
    } else if (value.length < 3) {
      return 'Minimum 3 karakter girmelisiniz';
    } else if (value.length > 50) {
      return 'Maximum 50 karakter girmelisiniz';
    } else {
      return null;
    }
  }

  @action
  String? validateEmail(String value) {
    final bool isValid = EmailValidator.validate(value);
    if (!isValid) {
      return 'Geçersiz Email';
    } else {
      return null;
    }
  }
}
