import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sanaliracase/core/network/interface/base_response_type.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class DataModel extends BaseResponseModel<DataModel> with _$DataModel {
  factory DataModel({
    String? bankName,
    String? bankIban,
    String? bankAccountName,
    String? descriptionNo,
  }) = _DataModel;
  DataModel._();
  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);

  @override
  DataModel fromJson(Map<String, dynamic> json) => DataModel.fromJson(json);
}
