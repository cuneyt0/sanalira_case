import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'register_viewmodel.g.dart';

class RegisterViewModel = _RegisterViewModelBase with _$RegisterViewModel;

abstract class _RegisterViewModelBase with Store {
  @observable
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @observable
  TextEditingController? nameController = TextEditingController();

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
  /*@observable
  String? onFieldSubmitted(String? value) {
    ticketDescriptionController?.text = value.toString();
    return null;*/
// if(formKey.currentState != null && formKey.currentState!.validate()){}
}
