import 'package:dio/dio.dart';

import '../interface/base_response_type.dart';

class NetworkDecoding {
  NetworkDecoding._();
  static K decode<T extends BaseResponseModel, K>(
      {required Response<dynamic> response, required T responseType}) {
    try {
      if (response.data is List) {
        final list = response.data as List;
        final dataList = List<T>.from(
            list.map((item) => responseType.fromJson(item)).toList()) as K;
        return dataList;
      } else {
        final data = responseType.fromJson(response.data) as K;
        return data;
      }
    } on TypeError {
      rethrow;
    }
  }
}
