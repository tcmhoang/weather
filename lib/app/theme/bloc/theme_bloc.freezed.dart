// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeEvent {
  Weather get weather => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather weather) weatherUpdate,
    required TResult Function(Weather weather) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Weather weather)? weatherUpdate,
    TResult Function(Weather weather)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather weather)? weatherUpdate,
    TResult Function(Weather weather)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_weatherUpdate value) weatherUpdate,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_weatherUpdate value)? weatherUpdate,
    TResult Function(_Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_weatherUpdate value)? weatherUpdate,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeEventCopyWith<ThemeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res>;
  $Res call({Weather weather});

  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res> implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  final ThemeEvent _value;
  // ignore: unused_field
  final $Res Function(ThemeEvent) _then;

  @override
  $Res call({
    Object? weather = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_weatherUpdateCopyWith<$Res>
    implements $ThemeEventCopyWith<$Res> {
  factory _$$_weatherUpdateCopyWith(
          _$_weatherUpdate value, $Res Function(_$_weatherUpdate) then) =
      __$$_weatherUpdateCopyWithImpl<$Res>;
  @override
  $Res call({Weather weather});

  @override
  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class __$$_weatherUpdateCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res>
    implements _$$_weatherUpdateCopyWith<$Res> {
  __$$_weatherUpdateCopyWithImpl(
      _$_weatherUpdate _value, $Res Function(_$_weatherUpdate) _then)
      : super(_value, (v) => _then(v as _$_weatherUpdate));

  @override
  _$_weatherUpdate get _value => super._value as _$_weatherUpdate;

  @override
  $Res call({
    Object? weather = freezed,
  }) {
    return _then(_$_weatherUpdate(
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }
}

/// @nodoc

class _$_weatherUpdate implements _weatherUpdate {
  const _$_weatherUpdate({required this.weather});

  @override
  final Weather weather;

  @override
  String toString() {
    return 'ThemeEvent.weatherUpdate(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_weatherUpdate &&
            const DeepCollectionEquality().equals(other.weather, weather));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(weather));

  @JsonKey(ignore: true)
  @override
  _$$_weatherUpdateCopyWith<_$_weatherUpdate> get copyWith =>
      __$$_weatherUpdateCopyWithImpl<_$_weatherUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather weather) weatherUpdate,
    required TResult Function(Weather weather) submit,
  }) {
    return weatherUpdate(weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Weather weather)? weatherUpdate,
    TResult Function(Weather weather)? submit,
  }) {
    return weatherUpdate?.call(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather weather)? weatherUpdate,
    TResult Function(Weather weather)? submit,
    required TResult orElse(),
  }) {
    if (weatherUpdate != null) {
      return weatherUpdate(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_weatherUpdate value) weatherUpdate,
    required TResult Function(_Submit value) submit,
  }) {
    return weatherUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_weatherUpdate value)? weatherUpdate,
    TResult Function(_Submit value)? submit,
  }) {
    return weatherUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_weatherUpdate value)? weatherUpdate,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (weatherUpdate != null) {
      return weatherUpdate(this);
    }
    return orElse();
  }
}

abstract class _weatherUpdate implements ThemeEvent {
  const factory _weatherUpdate({required final Weather weather}) =
      _$_weatherUpdate;

  @override
  Weather get weather => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_weatherUpdateCopyWith<_$_weatherUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitCopyWith<$Res> implements $ThemeEventCopyWith<$Res> {
  factory _$$_SubmitCopyWith(_$_Submit value, $Res Function(_$_Submit) then) =
      __$$_SubmitCopyWithImpl<$Res>;
  @override
  $Res call({Weather weather});

  @override
  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class __$$_SubmitCopyWithImpl<$Res> extends _$ThemeEventCopyWithImpl<$Res>
    implements _$$_SubmitCopyWith<$Res> {
  __$$_SubmitCopyWithImpl(_$_Submit _value, $Res Function(_$_Submit) _then)
      : super(_value, (v) => _then(v as _$_Submit));

  @override
  _$_Submit get _value => super._value as _$_Submit;

  @override
  $Res call({
    Object? weather = freezed,
  }) {
    return _then(_$_Submit(
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }
}

/// @nodoc

class _$_Submit implements _Submit {
  const _$_Submit({required this.weather});

  @override
  final Weather weather;

  @override
  String toString() {
    return 'ThemeEvent.submit(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Submit &&
            const DeepCollectionEquality().equals(other.weather, weather));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(weather));

  @JsonKey(ignore: true)
  @override
  _$$_SubmitCopyWith<_$_Submit> get copyWith =>
      __$$_SubmitCopyWithImpl<_$_Submit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather weather) weatherUpdate,
    required TResult Function(Weather weather) submit,
  }) {
    return submit(weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Weather weather)? weatherUpdate,
    TResult Function(Weather weather)? submit,
  }) {
    return submit?.call(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather weather)? weatherUpdate,
    TResult Function(Weather weather)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_weatherUpdate value) weatherUpdate,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_weatherUpdate value)? weatherUpdate,
    TResult Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_weatherUpdate value)? weatherUpdate,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements ThemeEvent {
  const factory _Submit({required final Weather weather}) = _$_Submit;

  @override
  Weather get weather => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SubmitCopyWith<_$_Submit> get copyWith =>
      throw _privateConstructorUsedError;
}

ThemeState _$ThemeStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'applied':
      return _applied.fromJson(json);
    case 'updating':
      return _updating.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ThemeState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ThemeState {
  @ColorConverter()
  Color get color => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@ColorConverter() Color color) applied,
    required TResult Function(@ColorConverter() Color color) updating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@ColorConverter() Color color)? applied,
    TResult Function(@ColorConverter() Color color)? updating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@ColorConverter() Color color)? applied,
    TResult Function(@ColorConverter() Color color)? updating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_applied value) applied,
    required TResult Function(_updating value) updating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_applied value)? applied,
    TResult Function(_updating value)? updating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_applied value)? applied,
    TResult Function(_updating value)? updating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res>;
  $Res call({@ColorConverter() Color color});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res> implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  final ThemeState _value;
  // ignore: unused_field
  final $Res Function(ThemeState) _then;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
abstract class _$$_appliedCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$$_appliedCopyWith(
          _$_applied value, $Res Function(_$_applied) then) =
      __$$_appliedCopyWithImpl<$Res>;
  @override
  $Res call({@ColorConverter() Color color});
}

/// @nodoc
class __$$_appliedCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements _$$_appliedCopyWith<$Res> {
  __$$_appliedCopyWithImpl(_$_applied _value, $Res Function(_$_applied) _then)
      : super(_value, (v) => _then(v as _$_applied));

  @override
  _$_applied get _value => super._value as _$_applied;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_$_applied(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_applied implements _applied {
  const _$_applied({@ColorConverter() required this.color, final String? $type})
      : $type = $type ?? 'applied';

  factory _$_applied.fromJson(Map<String, dynamic> json) =>
      _$$_appliedFromJson(json);

  @override
  @ColorConverter()
  final Color color;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ThemeState.applied(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_applied &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$_appliedCopyWith<_$_applied> get copyWith =>
      __$$_appliedCopyWithImpl<_$_applied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@ColorConverter() Color color) applied,
    required TResult Function(@ColorConverter() Color color) updating,
  }) {
    return applied(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@ColorConverter() Color color)? applied,
    TResult Function(@ColorConverter() Color color)? updating,
  }) {
    return applied?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@ColorConverter() Color color)? applied,
    TResult Function(@ColorConverter() Color color)? updating,
    required TResult orElse(),
  }) {
    if (applied != null) {
      return applied(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_applied value) applied,
    required TResult Function(_updating value) updating,
  }) {
    return applied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_applied value)? applied,
    TResult Function(_updating value)? updating,
  }) {
    return applied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_applied value)? applied,
    TResult Function(_updating value)? updating,
    required TResult orElse(),
  }) {
    if (applied != null) {
      return applied(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_appliedToJson(this);
  }
}

abstract class _applied implements ThemeState {
  const factory _applied({@ColorConverter() required final Color color}) =
      _$_applied;

  factory _applied.fromJson(Map<String, dynamic> json) = _$_applied.fromJson;

  @override
  @ColorConverter()
  Color get color => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_appliedCopyWith<_$_applied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_updatingCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$$_updatingCopyWith(
          _$_updating value, $Res Function(_$_updating) then) =
      __$$_updatingCopyWithImpl<$Res>;
  @override
  $Res call({@ColorConverter() Color color});
}

/// @nodoc
class __$$_updatingCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements _$$_updatingCopyWith<$Res> {
  __$$_updatingCopyWithImpl(
      _$_updating _value, $Res Function(_$_updating) _then)
      : super(_value, (v) => _then(v as _$_updating));

  @override
  _$_updating get _value => super._value as _$_updating;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_$_updating(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_updating implements _updating {
  const _$_updating(
      {@ColorConverter() required this.color, final String? $type})
      : $type = $type ?? 'updating';

  factory _$_updating.fromJson(Map<String, dynamic> json) =>
      _$$_updatingFromJson(json);

  @override
  @ColorConverter()
  final Color color;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ThemeState.updating(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_updating &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$_updatingCopyWith<_$_updating> get copyWith =>
      __$$_updatingCopyWithImpl<_$_updating>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@ColorConverter() Color color) applied,
    required TResult Function(@ColorConverter() Color color) updating,
  }) {
    return updating(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@ColorConverter() Color color)? applied,
    TResult Function(@ColorConverter() Color color)? updating,
  }) {
    return updating?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@ColorConverter() Color color)? applied,
    TResult Function(@ColorConverter() Color color)? updating,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_applied value) applied,
    required TResult Function(_updating value) updating,
  }) {
    return updating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_applied value)? applied,
    TResult Function(_updating value)? updating,
  }) {
    return updating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_applied value)? applied,
    TResult Function(_updating value)? updating,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_updatingToJson(this);
  }
}

abstract class _updating implements ThemeState {
  const factory _updating({@ColorConverter() required final Color color}) =
      _$_updating;

  factory _updating.fromJson(Map<String, dynamic> json) = _$_updating.fromJson;

  @override
  @ColorConverter()
  Color get color => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_updatingCopyWith<_$_updating> get copyWith =>
      throw _privateConstructorUsedError;
}
