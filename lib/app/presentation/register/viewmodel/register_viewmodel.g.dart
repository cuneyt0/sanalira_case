// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegisterViewModel on _RegisterViewModelBase, Store {
  late final _$cacheManagerAtom =
      Atom(name: '_RegisterViewModelBase.cacheManager', context: context);

  @override
  CacheManager? get cacheManager {
    _$cacheManagerAtom.reportRead();
    return super.cacheManager;
  }

  @override
  set cacheManager(CacheManager? value) {
    _$cacheManagerAtom.reportWrite(value, super.cacheManager, () {
      super.cacheManager = value;
    });
  }

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

  late final _$numberControllerAtom =
      Atom(name: '_RegisterViewModelBase.numberController', context: context);

  @override
  TextEditingController? get numberController {
    _$numberControllerAtom.reportRead();
    return super.numberController;
  }

  @override
  set numberController(TextEditingController? value) {
    _$numberControllerAtom.reportWrite(value, super.numberController, () {
      super.numberController = value;
    });
  }

  late final _$isSelectedAtom =
      Atom(name: '_RegisterViewModelBase.isSelected', context: context);

  @override
  bool? get isSelected {
    _$isSelectedAtom.reportRead();
    return super.isSelected;
  }

  @override
  set isSelected(bool? value) {
    _$isSelectedAtom.reportWrite(value, super.isSelected, () {
      super.isSelected = value;
    });
  }

  late final _$saveUserResulStateAtom =
      Atom(name: '_RegisterViewModelBase.saveUserResulState', context: context);

  @override
  ResultState<bool> get saveUserResulState {
    _$saveUserResulStateAtom.reportRead();
    return super.saveUserResulState;
  }

  @override
  set saveUserResulState(ResultState<bool> value) {
    _$saveUserResulStateAtom.reportWrite(value, super.saveUserResulState, () {
      super.saveUserResulState = value;
    });
  }

  late final _$userInformationAtom =
      Atom(name: '_RegisterViewModelBase.userInformation', context: context);

  @override
  UserInfo? get userInformation {
    _$userInformationAtom.reportRead();
    return super.userInformation;
  }

  @override
  set userInformation(UserInfo? value) {
    _$userInformationAtom.reportWrite(value, super.userInformation, () {
      super.userInformation = value;
    });
  }

  late final _$saveUserAsyncAction =
      AsyncAction('_RegisterViewModelBase.saveUser', context: context);

  @override
  Future<void> saveUser() {
    return _$saveUserAsyncAction.run(() => super.saveUser());
  }

  late final _$loginAsyncAction =
      AsyncAction('_RegisterViewModelBase.login', context: context);

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
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
cacheManager: ${cacheManager},
formKey: ${formKey},
nameController: ${nameController},
lastNameController: ${lastNameController},
emailController: ${emailController},
numberController: ${numberController},
isSelected: ${isSelected},
saveUserResulState: ${saveUserResulState},
userInformation: ${userInformation}
    ''';
  }
}
