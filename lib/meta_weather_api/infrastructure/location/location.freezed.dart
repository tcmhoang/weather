// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String get title => throw _privateConstructorUsedError;
  LocationType get locationType => throw _privateConstructorUsedError;
  @LatLongConverter()
  LatLong get lattLong => throw _privateConstructorUsedError;
  int get woeid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res>;
  $Res call(
      {String title,
      LocationType locationType,
      @LatLongConverter() LatLong lattLong,
      int woeid});

  $LatLongCopyWith<$Res> get lattLong;
}

/// @nodoc
class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  final Location _value;
  // ignore: unused_field
  final $Res Function(Location) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? locationType = freezed,
    Object? lattLong = freezed,
    Object? woeid = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      locationType: locationType == freezed
          ? _value.locationType
          : locationType // ignore: cast_nullable_to_non_nullable
              as LocationType,
      lattLong: lattLong == freezed
          ? _value.lattLong
          : lattLong // ignore: cast_nullable_to_non_nullable
              as LatLong,
      woeid: woeid == freezed
          ? _value.woeid
          : woeid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $LatLongCopyWith<$Res> get lattLong {
    return $LatLongCopyWith<$Res>(_value.lattLong, (value) {
      return _then(_value.copyWith(lattLong: value));
    });
  }
}

/// @nodoc
abstract class _$$_LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$$_LocationCopyWith(
          _$_Location value, $Res Function(_$_Location) then) =
      __$$_LocationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      LocationType locationType,
      @LatLongConverter() LatLong lattLong,
      int woeid});

  @override
  $LatLongCopyWith<$Res> get lattLong;
}

/// @nodoc
class __$$_LocationCopyWithImpl<$Res> extends _$LocationCopyWithImpl<$Res>
    implements _$$_LocationCopyWith<$Res> {
  __$$_LocationCopyWithImpl(
      _$_Location _value, $Res Function(_$_Location) _then)
      : super(_value, (v) => _then(v as _$_Location));

  @override
  _$_Location get _value => super._value as _$_Location;

  @override
  $Res call({
    Object? title = freezed,
    Object? locationType = freezed,
    Object? lattLong = freezed,
    Object? woeid = freezed,
  }) {
    return _then(_$_Location(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      locationType: locationType == freezed
          ? _value.locationType
          : locationType // ignore: cast_nullable_to_non_nullable
              as LocationType,
      lattLong: lattLong == freezed
          ? _value.lattLong
          : lattLong // ignore: cast_nullable_to_non_nullable
              as LatLong,
      woeid: woeid == freezed
          ? _value.woeid
          : woeid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Location implements _Location {
  const _$_Location(
      {required this.title,
      required this.locationType,
      @LatLongConverter() required this.lattLong,
      required this.woeid});

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

  @override
  final String title;
  @override
  final LocationType locationType;
  @override
  @LatLongConverter()
  final LatLong lattLong;
  @override
  final int woeid;

  @override
  String toString() {
    return 'Location(title: $title, locationType: $locationType, lattLong: $lattLong, woeid: $woeid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Location &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.locationType, locationType) &&
            const DeepCollectionEquality().equals(other.lattLong, lattLong) &&
            const DeepCollectionEquality().equals(other.woeid, woeid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(locationType),
      const DeepCollectionEquality().hash(lattLong),
      const DeepCollectionEquality().hash(woeid));

  @JsonKey(ignore: true)
  @override
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      __$$_LocationCopyWithImpl<_$_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(this);
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {required final String title,
      required final LocationType locationType,
      @LatLongConverter() required final LatLong lattLong,
      required final int woeid}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  LocationType get locationType => throw _privateConstructorUsedError;
  @override
  @LatLongConverter()
  LatLong get lattLong => throw _privateConstructorUsedError;
  @override
  int get woeid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      throw _privateConstructorUsedError;
}
