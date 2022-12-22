import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sanaliracase/core/network/interface/base_response_type.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

@freezed
class ResponseModel extends BaseResponseModel<ResponseModel>
    with _$ResponseModel {
  factory ResponseModel({
    int? code,
    String? message,
  }) = _ResponseModel;
  ResponseModel._();
  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);

  @override
  ResponseModel fromJson(Map<String, dynamic> json) =>
      ResponseModel.fromJson(json);
}
