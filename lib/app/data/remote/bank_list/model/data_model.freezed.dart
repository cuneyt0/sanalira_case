// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
class _$DataModelTearOff {
  const _$DataModelTearOff();

  _DataModel call(
      {String? bankName,
      String? bankIban,
      String? bankAccountName,
      String? descriptionNo}) {
    return _DataModel(
      bankName: bankName,
      bankIban: bankIban,
      bankAccountName: bankAccountName,
      descriptionNo: descriptionNo,
    );
  }

  DataModel fromJson(Map<String, Object?> json) {
    return DataModel.fromJson(json);
  }
}

/// @nodoc
const $DataModel = _$DataModelTearOff();

/// @nodoc
mixin _$DataModel {
  String? get bankName => throw _privateConstructorUsedError;
  String? get bankIban => throw _privateConstructorUsedError;
  String? get bankAccountName => throw _privateConstructorUsedError;
  String? get descriptionNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModelCopyWith<DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelCopyWith<$Res> {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) then) =
      _$DataModelCopyWithImpl<$Res>;
  $Res call(
      {String? bankName,
      String? bankIban,
      String? bankAccountName,
      String? descriptionNo});
}

/// @nodoc
class _$DataModelCopyWithImpl<$Res> implements $DataModelCopyWith<$Res> {
  _$DataModelCopyWithImpl(this._value, this._then);

  final DataModel _value;
  // ignore: unused_field
  final $Res Function(DataModel) _then;

  @override
  $Res call({
    Object? bankName = freezed,
    Object? bankIban = freezed,
    Object? bankAccountName = freezed,
    Object? descriptionNo = freezed,
  }) {
    return _then(_value.copyWith(
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankIban: bankIban == freezed
          ? _value.bankIban
          : bankIban // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccountName: bankAccountName == freezed
          ? _value.bankAccountName
          : bankAccountName // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionNo: descriptionNo == freezed
          ? _value.descriptionNo
          : descriptionNo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DataModelCopyWith<$Res> implements $DataModelCopyWith<$Res> {
  factory _$DataModelCopyWith(
          _DataModel value, $Res Function(_DataModel) then) =
      __$DataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? bankName,
      String? bankIban,
      String? bankAccountName,
      String? descriptionNo});
}

/// @nodoc
class __$DataModelCopyWithImpl<$Res> extends _$DataModelCopyWithImpl<$Res>
    implements _$DataModelCopyWith<$Res> {
  __$DataModelCopyWithImpl(_DataModel _value, $Res Function(_DataModel) _then)
      : super(_value, (v) => _then(v as _DataModel));

  @override
  _DataModel get _value => super._value as _DataModel;

  @override
  $Res call({
    Object? bankName = freezed,
    Object? bankIban = freezed,
    Object? bankAccountName = freezed,
    Object? descriptionNo = freezed,
  }) {
    return _then(_DataModel(
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankIban: bankIban == freezed
          ? _value.bankIban
          : bankIban // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccountName: bankAccountName == freezed
          ? _value.bankAccountName
          : bankAccountName // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionNo: descriptionNo == freezed
          ? _value.descriptionNo
          : descriptionNo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataModel extends _DataModel {
  _$_DataModel(
      {this.bankName, this.bankIban, this.bankAccountName, this.descriptionNo})
      : super._();

  factory _$_DataModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataModelFromJson(json);

  @override
  final String? bankName;
  @override
  final String? bankIban;
  @override
  final String? bankAccountName;
  @override
  final String? descriptionNo;

  @override
  String toString() {
    return 'DataModel(bankName: $bankName, bankIban: $bankIban, bankAccountName: $bankAccountName, descriptionNo: $descriptionNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataModel &&
            const DeepCollectionEquality().equals(other.bankName, bankName) &&
            const DeepCollectionEquality().equals(other.bankIban, bankIban) &&
            const DeepCollectionEquality()
                .equals(other.bankAccountName, bankAccountName) &&
            const DeepCollectionEquality()
                .equals(other.descriptionNo, descriptionNo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bankName),
      const DeepCollectionEquality().hash(bankIban),
      const DeepCollectionEquality().hash(bankAccountName),
      const DeepCollectionEquality().hash(descriptionNo));

  @JsonKey(ignore: true)
  @override
  _$DataModelCopyWith<_DataModel> get copyWith =>
      __$DataModelCopyWithImpl<_DataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataModelToJson(this);
  }
}

abstract class _DataModel extends DataModel {
  factory _DataModel(
      {String? bankName,
      String? bankIban,
      String? bankAccountName,
      String? descriptionNo}) = _$_DataModel;
  _DataModel._() : super._();

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$_DataModel.fromJson;

  @override
  String? get bankName;
  @override
  String? get bankIban;
  @override
  String? get bankAccountName;
  @override
  String? get descriptionNo;
  @override
  @JsonKey(ignore: true)
  _$DataModelCopyWith<_DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
