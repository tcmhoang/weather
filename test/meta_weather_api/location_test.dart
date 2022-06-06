import 'package:flutter_test/flutter_test.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:weather/meta_weather_api/infrastructure/enums/enums.dart';
import 'package:weather/meta_weather_api/meta_weather_api.dart';

void main() {
  group('Location', () {
    group('fromJson', () {
      test('throws CheckFromJsonException when LocationType is null', () {
        expect(
          () => Location.fromJson(<String, dynamic>{
            'title': 'mock-title',
            'location_type': 'Unknown',
            'latt_long': '-34.75,83.28',
            'woeid': 42
          }),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });
      test('successful parse json file with City location type', () {
        final mockLocation = Location.fromJson(<String, dynamic>{
          'title': 'mock-title',
          'location_type': 'City',
          'latt_long': '-34.75,83.28',
          'woeid': 42
        });
        expect(
          mockLocation,
          isA<Location>().having(
            (loc) => loc.locationType,
            'Location Type',
            LocationType.city,
          ),
        );
      });
    });
  });
}
