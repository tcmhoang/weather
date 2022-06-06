import 'package:json_annotation/json_annotation.dart';

import 'lat_long.dart';

class LatLongConverter implements JsonConverter<LatLong, String> {
  const LatLongConverter();

  @override
  LatLong fromJson(String json) {
    final parts = json.split(',');

    return LatLong(
      latitude: double.tryParse(parts[0]) ?? 0,
      longitude: double.tryParse(parts[1]) ?? 0,
    );
  }

  @override
  String toJson(LatLong latLng) {
    return '${latLng.latitude},${latLng.longitude}';
  }
}
