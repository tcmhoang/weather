import 'package:freezed_annotation/freezed_annotation.dart';
part 'lat_long.freezed.dart';

@freezed
class LatLong with _$LatLong {
  const factory LatLong({
    required double latitude,
    required double longitude,
  }) = _LatLong;
}
