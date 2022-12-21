import 'dart:io';

import 'package:dio/dio.dart';
import 'package:logging/logging.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sanaliracase/core/network/freezed/network_error.dart';
import 'package:sanaliracase/core/network/freezed/result.dart';
import 'package:sanaliracase/core/network/interface/base_response_type.dart';
import 'package:sanaliracase/core/network/layers/network_connectivity.dart';
import 'package:sanaliracase/core/network/layers/network_decoding.dart';
import 'package:sanaliracase/core/network/network_manager_interface.dart';

class NetworkManager extends INetworkManager {
  NetworkManager(
    this._baseURLRelease,
    this._baseURLDebug, {
    required this.apiReleaseMode,
    required this.setToken,
    this.debugMode,
  }) : assert(_baseURLRelease != null);

  final String? _baseURLRelease;
  final String? _baseURLDebug;

  String? _path;
  String? _method;
  String? _contentType;
  String? setToken;
  Map<String, dynamic>? _body;
  Map<String, dynamic>? _queryParameters;
  Map<String, dynamic>? _header;
  FormData? _formData;
  int? _sendTimeout;
  int? _receiveTimeOut;
  final Dio _dio = Dio();
  int? _connectTimeout;
  bool? debugMode;
  ResponseType? _responseType;
  bool? apiReleaseMode;
  String? _setFunctionName;

  @override
  INetworkManager setGET() {
    _method = 'GET';
    return this;
  }

  @override
  INetworkManager setDELETE() {
    _method = 'DELETE';
    return this;
  }

  @override
  INetworkManager setPOST() {
    _method = 'POST';
    return this;
  }

  @override
  INetworkManager setPUT() {
    _method = 'PUT';
    return this;
  }

  @override
  INetworkManager setConnectionTimeOut(int timeOut) {
    _connectTimeout = timeOut;
    return this;
  }

  @override
  INetworkManager setPath(String path) {
    _path = path;
    return this;
  }

  @override
  INetworkManager setContentType(String contentType) {
    _contentType = contentType;
    return this;
  }

  @override
  INetworkManager setBody(Map<String, dynamic>? body) {
    _body = body;

    return this;
  }

  @override
  INetworkManager setHeader(Map<String, dynamic>? header) {
    _header = header;
    return this;
  }

  @override
  INetworkManager setQueryParameters(Map<String, dynamic>? queryParameters) {
    _queryParameters = queryParameters;
    return this;
  }

  @override
  INetworkManager setReceiveTimeOut(int receiveTimeOut) {
    _receiveTimeOut = receiveTimeOut;
    return this;
  }

  @override
  INetworkManager setSendTimeout(int sendTimeout) {
    _sendTimeout = sendTimeout;
    return this;
  }

  @override
  INetworkManager addInterceptor() {
    _dio.interceptors.add(InterceptorsWrapper(onRequest: (request, handler) {
      request.headers['Authorization'] = 'Bearer $setToken';
      request.headers['Accept'] = 'application/json, text/plain, */*';
      request.headers['Content-Type'] = 'application/json';
      Logger.root.info(request);
      handler.next(request);
    }));

    return this;
  }

  @override
  INetworkManager setFunctionName({required String funcName}) {
    _setFunctionName = funcName;
    return this;
  }

  @override
  INetworkManager setResponseTYPE({required ResponseType responseType}) {
    _responseType = responseType;
    return this;
  }

  @override
  Future<Result<K, NetworkError>> execute<T extends BaseResponseModel, K>(
      T responseModel,
      {bool? isDecoded}) async {
    if (await NetworkConnectivity.status) {
      try {
        final response = await _dio.fetch(RequestOptions(
          baseUrl: apiReleaseMode == true ? _baseURLRelease : _baseURLDebug,
          path: _path ?? '',
          data: _formData ?? _body,
          contentType: _contentType,
          headers: _header,
          method: _method,
          connectTimeout: _connectTimeout,
          receiveTimeout: _receiveTimeOut ?? 100000,
          sendTimeout: _sendTimeout ?? 100000,
          queryParameters: _queryParameters,
          validateStatus: (statusCode) =>
              statusCode! >= HttpStatus.ok &&
              statusCode <= HttpStatus.multipleChoices,
        ));
        // ignore: avoid_print
        print('🔗 BaseURL $_setFunctionName : ${response.realUri}');
        // ignore: avoid_print
        // print('🍕 DATA $_setFunctionName : ${response.data}');
        // TODO: TEST ET,
        if (response.statusCode == 401) {
          // await Navigation.pushAndRemoveAll(page: const LoginScreen());
        }
        final decodeResponse = NetworkDecoding.decode<T, K>(
            response: response, responseType: responseModel);
        return Result.success(decodeResponse);
      } on DioError catch (diorError) {
        if (debugMode == true) {
          // ignore: avoid_print
          print(' => ${NetworkError.request(error: diorError)}');
        }
        if (diorError.response?.statusCode == 401) {
          //Login Ekranına Yönlendirilecek.
          //  await _repo.logout();
        }

        return Result.failure(NetworkError.request(error: diorError));

        // TYPE ERROR
        // ignore: avoid_catching_errors
      } on TypeError catch (e) {
        if (debugMode == true) {
          // ignore: avoid_print
          print('=> ${NetworkError.type(error: e.toString())}');
        }

        return Result.failure(NetworkError.type(error: e.toString()));
      }
    } else {
      if (debugMode == true) {
        // ignore: avoid_print
        print(
            const NetworkError.connectivity(message: 'No Internet Connection'));
      }
      return const Result.failure(
          NetworkError.connectivity(message: 'No Internet Connection'));
    }
  }

  @override
  Future<Result<Response, NetworkError>> executeToResponseData() async {
    if (await NetworkConnectivity.status) {
      try {
        final response = await _dio.fetch(RequestOptions(
          baseUrl: apiReleaseMode == true ? _baseURLRelease : _baseURLDebug,
          path: _path ?? '',
          data: _body,
          contentType: _contentType,
          headers: _header,
          method: _method,
          connectTimeout: _connectTimeout,
          receiveTimeout: _receiveTimeOut ?? 100000,
          sendTimeout: _sendTimeout ?? 100000,
          responseType: _responseType,
          queryParameters: _queryParameters,
          validateStatus: (statusCode) =>
              statusCode! >= HttpStatus.ok &&
              statusCode <= HttpStatus.multipleChoices,
        ));
        // ignore: avoid_print
        print('🔗 BaseURL $_setFunctionName : ${response.realUri}');
        // ignore: avoid_print
        // print('🍕 DATA $_setFunctionName : ${response.data}');

        return Result.success(response);
      } on DioError catch (diorError) {
        if (debugMode == true) {
          // ignore: avoid_print
          print(' => ${NetworkError.request(error: diorError)}');
        }
        return Result.failure(NetworkError.request(error: diorError));

        // TYPE ERROR
        // ignore: avoid_catching_errors
      } on TypeError catch (e) {
        if (debugMode == true) {
          // ignore: avoid_print
          print('=> ${NetworkError.type(error: e.toString())}');
        }

        return Result.failure(NetworkError.type(error: e.toString()));
      }
    } else {
      if (debugMode == true) {
        // ignore: avoid_print
        print(
            const NetworkError.connectivity(message: 'No Internet Connection'));
      }
      return const Result.failure(
          NetworkError.connectivity(message: 'No Internet Connection'));
    }
  }

  @override
  INetworkManager setBodyFormData(FormData? formData) {
    _formData = formData;
    return this;
  }

  @override
  Future<Result<Response, NetworkError>> downloadFile() async {
    try {
      final appStorage = await getApplicationDocumentsDirectory();
      final file = File('${appStorage.path}/${DateTime.now().toString()}');
      print(file.path);
      final response = await _dio.download(
          (apiReleaseMode == true ? _baseURLRelease : _baseURLDebug)! + _path!,
          file.path);
      // ignore: avoid_print
      print('🔗 BaseURL $_setFunctionName : ${response.realUri}');
      // ignore: avoid_print
      // print('🍕 DATA $_setFunctionName : ${response.data}');

      return Result.success(response);
    } on DioError catch (diorError) {
      if (debugMode == true) {
        // ignore: avoid_print
        print(' => ${NetworkError.request(error: diorError)}');
      }
      return Result.failure(NetworkError.request(error: diorError));

      // TYPE ERROR
      // ignore: avoid_catching_errors
    } on TypeError catch (e) {
      if (debugMode == true) {
        // ignore: avoid_print
        print('=> ${NetworkError.type(error: e.toString())}');
      }

      return Result.failure(NetworkError.type(error: e.toString()));
    }
  }
}
