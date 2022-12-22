import 'package:flutter_easyloading/flutter_easyloading.dart';

class ToastMessage {
  ToastMessage._();
  static Future<void> showToast(
          {required String showMessage,
          EasyLoadingToastPosition? toastPosition}) async =>
      EasyLoading.showToast(showMessage, toastPosition: toastPosition);

  static Future<void> showSuccess({required String showMessage}) async =>
      EasyLoading.showSuccess(showMessage);
}
