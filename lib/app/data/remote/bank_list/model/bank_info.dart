import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sanaliracase/app/data/remote/bank_list/model/data_model.dart';
import 'package:sanaliracase/app/data/remote/bank_list/model/response_model.dart';
import 'package:sanaliracase/core/network/interface/base_response_type.dart';

part 'bank_info.freezed.dart';
part 'bank_info.g.dart';

@freezed
class BankInfo extends BaseResponseModel<BankInfo> with _$BankInfo {
  factory BankInfo({
    ResponseModel? response,
    List<DataModel?>? data,
  }) = _BankInfo;
  BankInfo._();
  factory BankInfo.fromJson(Map<String, dynamic> json) =>
      _$BankInfoFromJson(json);

  @override
  BankInfo fromJson(Map<String, dynamic> json) => BankInfo.fromJson(json);
}
