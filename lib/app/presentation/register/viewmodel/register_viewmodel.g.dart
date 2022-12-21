// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegisterViewModel on _RegisterViewModelBase, Store {
  late final _$formKeyAtom =
      Atom(name: '_RegisterViewModelBase.formKey', context: context);

  @override
  GlobalKey<FormState> get formKey {
    _$formKeyAtom.reportRead();
    return super.formKey;
  }

  @override
  set formKey(GlobalKey<FormState> value) {
    _$formKeyAtom.reportWrite(value, super.formKey, () {
      super.formKey = value;
    });
  }

  late final _$nameControllerAtom =
      Atom(name: '_RegisterViewModelBase.nameController', context: context);

  @override
  TextEditingController? get nameController {
    _$nameControllerAtom.reportRead();
    return super.nameController;
  }

  @override
  set nameController(TextEditingController? value) {
    _$nameControllerAtom.reportWrite(value, super.nameController, () {
      super.nameController = value;
    });
  }

  late final _$lastNameControllerAtom =
      Atom(name: '_RegisterViewModelBase.lastNameController', context: context);

  @override
  TextEditingController? get lastNameController {
    _$lastNameControllerAtom.reportRead();
    return super.lastNameController;
  }

  @override
  set lastNameController(TextEditingController? value) {
    _$lastNameControllerAtom.reportWrite(value, super.lastNameController, () {
      super.lastNameController = value;
    });
  }

  late final _$emailControllerAtom =
      Atom(name: '_RegisterViewModelBase.emailController', context: context);

  @override
  TextEditingController? get emailController {
    _$emailControllerAtom.reportRead();
    return super.emailController;
  }

  @override
  set emailController(TextEditingController? value) {
    _$emailControllerAtom.reportWrite(value, super.emailController, () {
      super.emailController = value;
    });
  }

  late final _$_RegisterViewModelBaseActionController =
      ActionController(name: '_RegisterViewModelBase', context: context);

  @override
  String? nameAndLastNameValidation(String value) {
    final _$actionInfo = _$_RegisterViewModelBaseActionController.startAction(
        name: '_RegisterViewModelBase.nameAndLastNameValidation');
    try {
      return super.nameAndLastNameValidation(value);
    } finally {
      _$_RegisterViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? eMailValidation(String value) {
    final _$actionInfo = _$_RegisterViewModelBaseActionController.startAction(
        name: '_RegisterViewModelBase.eMailValidation');
    try {
      return super.eMailValidation(value);
    } finally {
      _$_RegisterViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validateEmail(String value) {
    final _$actionInfo = _$_RegisterViewModelBaseActionController.startAction(
        name: '_RegisterViewModelBase.validateEmail');
    try {
      return super.validateEmail(value);
    } finally {
      _$_RegisterViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
formKey: ${formKey},
nameController: ${nameController},
lastNameController: ${lastNameController},
emailController: ${emailController}
    ''';
  }
}
