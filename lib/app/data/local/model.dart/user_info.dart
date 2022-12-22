import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sanaliracase/core/network/interface/base_response_type.dart';

part 'user_info.freezed.dart';
part 'user_info.g.dart';

@freezed
class UserInfo extends BaseResponseModel<UserInfo> with _$UserInfo {
  factory UserInfo(
      {String? name,
      String? lastName,
      String? email,
      String? number}) = _UserInfo;

  UserInfo._();

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);

  @override
  UserInfo fromJson(Map<String, dynamic> json) => UserInfo.fromJson(json);
}
