// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'temperature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Temperature _$TemperatureFromJson(Map<String, dynamic> json) {
  return _Temperature.fromJson(json);
}

/// @nodoc
mixin _$Temperature {
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemperatureCopyWith<Temperature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureCopyWith<$Res> {
  factory $TemperatureCopyWith(
          Temperature value, $Res Function(Temperature) then) =
      _$TemperatureCopyWithImpl<$Res>;
  $Res call({double value});
}

/// @nodoc
class _$TemperatureCopyWithImpl<$Res> implements $TemperatureCopyWith<$Res> {
  _$TemperatureCopyWithImpl(this._value, this._then);

  final Temperature _value;
  // ignore: unused_field
  final $Res Function(Temperature) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_TemperatureCopyWith<$Res>
    implements $TemperatureCopyWith<$Res> {
  factory _$$_TemperatureCopyWith(
          _$_Temperature value, $Res Function(_$_Temperature) then) =
      __$$_TemperatureCopyWithImpl<$Res>;
  @override
  $Res call({double value});
}

/// @nodoc
class __$$_TemperatureCopyWithImpl<$Res> extends _$TemperatureCopyWithImpl<$Res>
    implements _$$_TemperatureCopyWith<$Res> {
  __$$_TemperatureCopyWithImpl(
      _$_Temperature _value, $Res Function(_$_Temperature) _then)
      : super(_value, (v) => _then(v as _$_Temperature));

  @override
  _$_Temperature get _value => super._value as _$_Temperature;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Temperature(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Temperature extends _Temperature {
  const _$_Temperature({required this.value}) : super._();

  factory _$_Temperature.fromJson(Map<String, dynamic> json) =>
      _$$_TemperatureFromJson(json);

  @override
  final double value;

  @override
  String toString() {
    return 'Temperature(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Temperature &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_TemperatureCopyWith<_$_Temperature> get copyWith =>
      __$$_TemperatureCopyWithImpl<_$_Temperature>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TemperatureToJson(this);
  }
}

abstract class _Temperature extends Temperature {
  const factory _Temperature({required final double value}) = _$_Temperature;
  const _Temperature._() : super._();

  factory _Temperature.fromJson(Map<String, dynamic> json) =
      _$_Temperature.fromJson;

  @override
  double get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TemperatureCopyWith<_$_Temperature> get copyWith =>
      throw _privateConstructorUsedError;
}
