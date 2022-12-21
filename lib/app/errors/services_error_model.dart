import 'base_errors_model.dart';

class ServicesError implements BaseErrorsModel {
  ServicesError({this.code, this.message});
  @override
  String? code;
  @override
  String? message;

  @override
  String toString() => 'errorCode $code errorMessage $message';
}
