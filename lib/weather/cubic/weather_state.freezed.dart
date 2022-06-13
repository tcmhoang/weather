// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherState _$WeatherStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return _initial.fromJson(json);
    case 'loading':
      return _loading.fromJson(json);
    case 'success':
      return _success.fromJson(json);
    case 'failure':
      return _failure.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WeatherState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WeatherState {
  TemperatureUnits get unit => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TemperatureUnits unit, Weather weather) initial,
    required TResult Function(TemperatureUnits unit, Weather weather) loading,
    required TResult Function(TemperatureUnits unit, Weather weather) success,
    required TResult Function(TemperatureUnits unit) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TemperatureUnits unit, Weather weather)? initial,
    TResult Function(TemperatureUnits unit, Weather weather)? loading,
    TResult Function(TemperatureUnits unit, Weather weather)? success,
    TResult Function(TemperatureUnits unit)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TemperatureUnits unit, Weather weather)? initial,
    TResult Function(TemperatureUnits unit, Weather weather)? loading,
    TResult Function(TemperatureUnits unit, Weather weather)? success,
    TResult Function(TemperatureUnits unit)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
  $Res call({TemperatureUnits unit});
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;

  @override
  $Res call({
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as TemperatureUnits,
    ));
  }
}

/// @nodoc
abstract class _$$_initialCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$_initialCopyWith(
          _$_initial value, $Res Function(_$_initial) then) =
      __$$_initialCopyWithImpl<$Res>;
  @override
  $Res call({TemperatureUnits unit, Weather weather});

  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class __$$_initialCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$$_initialCopyWith<$Res> {
  __$$_initialCopyWithImpl(_$_initial _value, $Res Function(_$_initial) _then)
      : super(_value, (v) => _then(v as _$_initial));

  @override
  _$_initial get _value => super._value as _$_initial;

  @override
  $Res call({
    Object? unit = freezed,
    Object? weather = freezed,
  }) {
    return _then(_$_initial(
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as TemperatureUnits,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }

  @override
  $WeatherCopyWith<$Res> get weather {
    return $WeatherCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_initial implements _initial {
  const _$_initial(
      {this.unit = TemperatureUnits.celsius,
      required this.weather,
      final String? $type})
      : $type = $type ?? 'initial';

  factory _$_initial.fromJson(Map<String, dynamic> json) =>
      _$$_initialFromJson(json);

  @override
  @JsonKey()
  final TemperatureUnits unit;
  @override
  final Weather weather;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WeatherState.initial(unit: $unit, weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_initial &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            const DeepCollectionEquality().equals(other.weather, weather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(unit),
      const DeepCollectionEquality().hash(weather));

  @JsonKey(ignore: true)
  @override
  _$$_initialCopyWith<_$_initial> get copyWith =>
      __$$_initialCopyWithImpl<_$_initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TemperatureUnits unit, Weather weather) initial,
    required TResult Function(TemperatureUnits unit, Weather weather) loading,
    required TResult Function(TemperatureUnits unit, Weather weather) success,
    required TResult Function(TemperatureUnits unit) failure,
  }) {
    return initial(unit, weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TemperatureUnits unit, Weather weather)? initial,
    TResult Function(TemperatureUnits unit, Weather weather)? loading,
    TResult Function(TemperatureUnits unit, Weather weather)? success,
    TResult Function(TemperatureUnits unit)? failure,
  }) {
    return initial?.call(unit, weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TemperatureUnits unit, Weather weather)? initial,
    TResult Function(TemperatureUnits unit, Weather weather)? loading,
    TResult Function(TemperatureUnits unit, Weather weather)? success,
    TResult Function(TemperatureUnits unit)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(unit, weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_initialToJson(this);
  }
}

abstract class _initial implements WeatherState {
  const factory _initial(
      {final TemperatureUnits unit,
      required final Weather weather}) = _$_initial;

  factory _initial.fromJson(Map<String, dynamic> json) = _$_initial.fromJson;

  @override
  TemperatureUnits get unit => throw _privateConstructorUsedError;
  Weather get weather => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_initialCopyWith<_$_initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_loadingCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$_loadingCopyWith(
          _$_loading value, $Res Function(_$_loading) then) =
      __$$_loadingCopyWithImpl<$Res>;
  @override
  $Res call({TemperatureUnits unit, Weather weather});

  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class __$$_loadingCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$$_loadingCopyWith<$Res> {
  __$$_loadingCopyWithImpl(_$_loading _value, $Res Function(_$_loading) _then)
      : super(_value, (v) => _then(v as _$_loading));

  @override
  _$_loading get _value => super._value as _$_loading;

  @override
  $Res call({
    Object? unit = freezed,
    Object? weather = freezed,
  }) {
    return _then(_$_loading(
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as TemperatureUnits,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }

  @override
  $WeatherCopyWith<$Res> get weather {
    return $WeatherCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_loading implements _loading {
  const _$_loading(
      {this.unit = TemperatureUnits.celsius,
      required this.weather,
      final String? $type})
      : $type = $type ?? 'loading';

  factory _$_loading.fromJson(Map<String, dynamic> json) =>
      _$$_loadingFromJson(json);

  @override
  @JsonKey()
  final TemperatureUnits unit;
  @override
  final Weather weather;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WeatherState.loading(unit: $unit, weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_loading &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            const DeepCollectionEquality().equals(other.weather, weather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(unit),
      const DeepCollectionEquality().hash(weather));

  @JsonKey(ignore: true)
  @override
  _$$_loadingCopyWith<_$_loading> get copyWith =>
      __$$_loadingCopyWithImpl<_$_loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TemperatureUnits unit, Weather weather) initial,
    required TResult Function(TemperatureUnits unit, Weather weather) loading,
    required TResult Function(TemperatureUnits unit, Weather weather) success,
    required TResult Function(TemperatureUnits unit) failure,
  }) {
    return loading(unit, weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TemperatureUnits unit, Weather weather)? initial,
    TResult Function(TemperatureUnits unit, Weather weather)? loading,
    TResult Function(TemperatureUnits unit, Weather weather)? success,
    TResult Function(TemperatureUnits unit)? failure,
  }) {
    return loading?.call(unit, weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TemperatureUnits unit, Weather weather)? initial,
    TResult Function(TemperatureUnits unit, Weather weather)? loading,
    TResult Function(TemperatureUnits unit, Weather weather)? success,
    TResult Function(TemperatureUnits unit)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(unit, weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_loadingToJson(this);
  }
}

abstract class _loading implements WeatherState {
  const factory _loading(
      {final TemperatureUnits unit,
      required final Weather weather}) = _$_loading;

  factory _loading.fromJson(Map<String, dynamic> json) = _$_loading.fromJson;

  @override
  TemperatureUnits get unit => throw _privateConstructorUsedError;
  Weather get weather => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_loadingCopyWith<_$_loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_successCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$_successCopyWith(
          _$_success value, $Res Function(_$_success) then) =
      __$$_successCopyWithImpl<$Res>;
  @override
  $Res call({TemperatureUnits unit, Weather weather});

  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class __$$_successCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$$_successCopyWith<$Res> {
  __$$_successCopyWithImpl(_$_success _value, $Res Function(_$_success) _then)
      : super(_value, (v) => _then(v as _$_success));

  @override
  _$_success get _value => super._value as _$_success;

  @override
  $Res call({
    Object? unit = freezed,
    Object? weather = freezed,
  }) {
    return _then(_$_success(
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as TemperatureUnits,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }

  @override
  $WeatherCopyWith<$Res> get weather {
    return $WeatherCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_success implements _success {
  const _$_success(
      {this.unit = TemperatureUnits.celsius,
      required this.weather,
      final String? $type})
      : $type = $type ?? 'success';

  factory _$_success.fromJson(Map<String, dynamic> json) =>
      _$$_successFromJson(json);

  @override
  @JsonKey()
  final TemperatureUnits unit;
  @override
  final Weather weather;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WeatherState.success(unit: $unit, weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_success &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            const DeepCollectionEquality().equals(other.weather, weather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(unit),
      const DeepCollectionEquality().hash(weather));

  @JsonKey(ignore: true)
  @override
  _$$_successCopyWith<_$_success> get copyWith =>
      __$$_successCopyWithImpl<_$_success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TemperatureUnits unit, Weather weather) initial,
    required TResult Function(TemperatureUnits unit, Weather weather) loading,
    required TResult Function(TemperatureUnits unit, Weather weather) success,
    required TResult Function(TemperatureUnits unit) failure,
  }) {
    return success(unit, weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TemperatureUnits unit, Weather weather)? initial,
    TResult Function(TemperatureUnits unit, Weather weather)? loading,
    TResult Function(TemperatureUnits unit, Weather weather)? success,
    TResult Function(TemperatureUnits unit)? failure,
  }) {
    return success?.call(unit, weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TemperatureUnits unit, Weather weather)? initial,
    TResult Function(TemperatureUnits unit, Weather weather)? loading,
    TResult Function(TemperatureUnits unit, Weather weather)? success,
    TResult Function(TemperatureUnits unit)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(unit, weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_successToJson(this);
  }
}

abstract class _success implements WeatherState {
  const factory _success(
      {final TemperatureUnits unit,
      required final Weather weather}) = _$_success;

  factory _success.fromJson(Map<String, dynamic> json) = _$_success.fromJson;

  @override
  TemperatureUnits get unit => throw _privateConstructorUsedError;
  Weather get weather => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_successCopyWith<_$_success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_failureCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$_failureCopyWith(
          _$_failure value, $Res Function(_$_failure) then) =
      __$$_failureCopyWithImpl<$Res>;
  @override
  $Res call({TemperatureUnits unit});
}

/// @nodoc
class __$$_failureCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$$_failureCopyWith<$Res> {
  __$$_failureCopyWithImpl(_$_failure _value, $Res Function(_$_failure) _then)
      : super(_value, (v) => _then(v as _$_failure));

  @override
  _$_failure get _value => super._value as _$_failure;

  @override
  $Res call({
    Object? unit = freezed,
  }) {
    return _then(_$_failure(
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as TemperatureUnits,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_failure implements _failure {
  const _$_failure({this.unit = TemperatureUnits.celsius, final String? $type})
      : $type = $type ?? 'failure';

  factory _$_failure.fromJson(Map<String, dynamic> json) =>
      _$$_failureFromJson(json);

  @override
  @JsonKey()
  final TemperatureUnits unit;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WeatherState.failure(unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_failure &&
            const DeepCollectionEquality().equals(other.unit, unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(unit));

  @JsonKey(ignore: true)
  @override
  _$$_failureCopyWith<_$_failure> get copyWith =>
      __$$_failureCopyWithImpl<_$_failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TemperatureUnits unit, Weather weather) initial,
    required TResult Function(TemperatureUnits unit, Weather weather) loading,
    required TResult Function(TemperatureUnits unit, Weather weather) success,
    required TResult Function(TemperatureUnits unit) failure,
  }) {
    return failure(unit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TemperatureUnits unit, Weather weather)? initial,
    TResult Function(TemperatureUnits unit, Weather weather)? loading,
    TResult Function(TemperatureUnits unit, Weather weather)? success,
    TResult Function(TemperatureUnits unit)? failure,
  }) {
    return failure?.call(unit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TemperatureUnits unit, Weather weather)? initial,
    TResult Function(TemperatureUnits unit, Weather weather)? loading,
    TResult Function(TemperatureUnits unit, Weather weather)? success,
    TResult Function(TemperatureUnits unit)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(unit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_failureToJson(this);
  }
}

abstract class _failure implements WeatherState {
  const factory _failure({final TemperatureUnits unit}) = _$_failure;

  factory _failure.fromJson(Map<String, dynamic> json) = _$_failure.fromJson;

  @override
  TemperatureUnits get unit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_failureCopyWith<_$_failure> get copyWith =>
      throw _privateConstructorUsedError;
}
