// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataModel _$$_DataModelFromJson(Map<String, dynamic> json) => _$_DataModel(
      bankName: json['bankName'] as String?,
      bankIban: json['bankIban'] as String?,
      bankAccountName: json['bankAccountName'] as String?,
      descriptionNo: json['descriptionNo'] as String?,
    );

Map<String, dynamic> _$$_DataModelToJson(_$_DataModel instance) =>
    <String, dynamic>{
      'bankName': instance.bankName,
      'bankIban': instance.bankIban,
      'bankAccountName': instance.bankAccountName,
      'descriptionNo': instance.descriptionNo,
    };
