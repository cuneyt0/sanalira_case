// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BankInfo _$$_BankInfoFromJson(Map<String, dynamic> json) => _$_BankInfo(
      response: json['response'] == null
          ? null
          : ResponseModel.fromJson(json['response'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : DataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BankInfoToJson(_$_BankInfo instance) =>
    <String, dynamic>{
      'response': instance.response,
      'data': instance.data,
    };
