// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bank_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankInfo _$BankInfoFromJson(Map<String, dynamic> json) {
  return _BankInfo.fromJson(json);
}

/// @nodoc
class _$BankInfoTearOff {
  const _$BankInfoTearOff();

  _BankInfo call({ResponseModel? response, List<DataModel?>? data}) {
    return _BankInfo(
      response: response,
      data: data,
    );
  }

  BankInfo fromJson(Map<String, Object?> json) {
    return BankInfo.fromJson(json);
  }
}

/// @nodoc
const $BankInfo = _$BankInfoTearOff();

/// @nodoc
mixin _$BankInfo {
  ResponseModel? get response => throw _privateConstructorUsedError;
  List<DataModel?>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankInfoCopyWith<BankInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankInfoCopyWith<$Res> {
  factory $BankInfoCopyWith(BankInfo value, $Res Function(BankInfo) then) =
      _$BankInfoCopyWithImpl<$Res>;
  $Res call({ResponseModel? response, List<DataModel?>? data});

  $ResponseModelCopyWith<$Res>? get response;
}

/// @nodoc
class _$BankInfoCopyWithImpl<$Res> implements $BankInfoCopyWith<$Res> {
  _$BankInfoCopyWithImpl(this._value, this._then);

  final BankInfo _value;
  // ignore: unused_field
  final $Res Function(BankInfo) _then;

  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResponseModel?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataModel?>?,
    ));
  }

  @override
  $ResponseModelCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $ResponseModelCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc
abstract class _$BankInfoCopyWith<$Res> implements $BankInfoCopyWith<$Res> {
  factory _$BankInfoCopyWith(_BankInfo value, $Res Function(_BankInfo) then) =
      __$BankInfoCopyWithImpl<$Res>;
  @override
  $Res call({ResponseModel? response, List<DataModel?>? data});

  @override
  $ResponseModelCopyWith<$Res>? get response;
}

/// @nodoc
class __$BankInfoCopyWithImpl<$Res> extends _$BankInfoCopyWithImpl<$Res>
    implements _$BankInfoCopyWith<$Res> {
  __$BankInfoCopyWithImpl(_BankInfo _value, $Res Function(_BankInfo) _then)
      : super(_value, (v) => _then(v as _BankInfo));

  @override
  _BankInfo get _value => super._value as _BankInfo;

  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
  }) {
    return _then(_BankInfo(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResponseModel?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataModel?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BankInfo extends _BankInfo {
  _$_BankInfo({this.response, this.data}) : super._();

  factory _$_BankInfo.fromJson(Map<String, dynamic> json) =>
      _$$_BankInfoFromJson(json);

  @override
  final ResponseModel? response;
  @override
  final List<DataModel?>? data;

  @override
  String toString() {
    return 'BankInfo(response: $response, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BankInfo &&
            const DeepCollectionEquality().equals(other.response, response) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(response),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$BankInfoCopyWith<_BankInfo> get copyWith =>
      __$BankInfoCopyWithImpl<_BankInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankInfoToJson(this);
  }
}

abstract class _BankInfo extends BankInfo {
  factory _BankInfo({ResponseModel? response, List<DataModel?>? data}) =
      _$_BankInfo;
  _BankInfo._() : super._();

  factory _BankInfo.fromJson(Map<String, dynamic> json) = _$_BankInfo.fromJson;

  @override
  ResponseModel? get response;
  @override
  List<DataModel?>? get data;
  @override
  @JsonKey(ignore: true)
  _$BankInfoCopyWith<_BankInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
