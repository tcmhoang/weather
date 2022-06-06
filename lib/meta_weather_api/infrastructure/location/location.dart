import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:weather/meta_weather_api/infrastructure/location/lat_long_converter.dart';
import '../enums/enums.dart';
import 'lat_long.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location {
  const factory Location({
    required String title,
    required LocationType locationType,
    @LatLongConverter() required LatLong lattLong,
    required int woeid,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
