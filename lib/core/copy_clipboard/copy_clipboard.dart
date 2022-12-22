import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class CopyClipBoard {
  CopyClipBoard._();
  static Future<void> copy(String? text) async {
    if (text != null) {
      await Clipboard.setData(ClipboardData(text: text))
          .then((value) async => EasyLoading.showToast('Başarıyla Kopyalandı'))
          .catchError((error) =>
              EasyLoading.showToast('Kopyalanırken Bir Hata Oluştu'));
    }
  }
}
