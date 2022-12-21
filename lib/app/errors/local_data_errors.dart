import 'base_errors_model.dart';

class LocalDataErrors implements BaseErrorsModel {
  LocalDataErrors({this.code, this.message});
  @override
  String? code;
  @override
  String? message;

  @override
  String toString() => 'errorCode $code errorMessage $message';
}
