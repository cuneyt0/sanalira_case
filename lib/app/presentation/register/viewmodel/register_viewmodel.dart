import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:sanaliracase/app/data/local/model.dart/user_info.dart';
import 'package:sanaliracase/app/getIt/get_it.dart';
import 'package:sanaliracase/app/presentation/bank_list/screen/bank_list.dart';
import 'package:sanaliracase/app/presentation/bank_list/view_model/bank_list_viewmodel.dart';
import 'package:sanaliracase/core/cache/cache_manager.dart';
import 'package:sanaliracase/core/navigation/navigation_helper.dart';
import 'package:sanaliracase/core/results/result_state.dart';

part 'register_viewmodel.g.dart';

class RegisterViewModel = _RegisterViewModelBase with _$RegisterViewModel;

abstract class _RegisterViewModelBase with Store {
  @observable
  CacheManager? cacheManager = CacheManager();
  @observable
  final BankListViewModel _bankListViewModel = getIt.get<BankListViewModel>();
  @observable
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @observable
  TextEditingController? nameController = TextEditingController();
  @observable
  TextEditingController? lastNameController = TextEditingController();
  @observable
  TextEditingController? emailController = TextEditingController();
  @observable
  TextEditingController? numberController = TextEditingController();
  @observable
  bool? isSelected = false;
  @observable
  ResultState<bool> saveUserResulState = const ResultState.initial();
  @observable
  UserInfo? userInformation = UserInfo();

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

  @action
  Future<void> saveUser() async {
    print('${emailController?.text}');

    cacheManager?.saveLoginResponse(UserInfo(
      name: nameController?.text,
      lastName: lastNameController?.text,
      email: emailController?.text,
      number: numberController?.text,
    ));
    await _bankListViewModel.getAssignment();

    await Navigation.push(page: BankList());
  }

  @action
  Future<void> login() async {
    if (formKey.currentState != null &&
        formKey.currentState!.validate() &&
        isSelected == true) {
      await saveUser();
    } else {}
  }
}
