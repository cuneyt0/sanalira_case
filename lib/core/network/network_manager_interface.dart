import 'package:dio/dio.dart';
import 'package:sanaliracase/core/network/freezed/network_error.dart';
import 'package:sanaliracase/core/network/freezed/result.dart';
import 'package:sanaliracase/core/network/interface/base_response_type.dart';

abstract class INetworkManager {
  INetworkManager setGET();
  INetworkManager setPUT();
  INetworkManager setDELETE();
  INetworkManager setPOST();
  INetworkManager setBodyFormData(FormData? formData);
  INetworkManager setConnectionTimeOut(int timeOut);
  INetworkManager setPath(String path);
  INetworkManager setContentType(String contentType);
  INetworkManager addInterceptor();
  INetworkManager setFunctionName({required String funcName});
  INetworkManager setBody(Map<String, dynamic>? body);
  INetworkManager setQueryParameters(Map<String, dynamic>? queryParameters);
  INetworkManager setHeader(Map<String, dynamic>? header);
  INetworkManager setSendTimeout(int sendTimeout);
  INetworkManager setReceiveTimeOut(int receiveTimeOut);
  INetworkManager setResponseTYPE({required ResponseType responseType});

  Future<Result<K, NetworkError>> execute<T extends BaseResponseModel, K>(
      T responseModel);
  Future<Result<Response, NetworkError>> executeToResponseData();
  Future<Result<Response, NetworkError>> downloadFile();
}
