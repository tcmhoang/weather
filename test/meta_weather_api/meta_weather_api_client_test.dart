import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:weather/core/utils/exceptions.dart';
import 'package:weather/meta_weather_api/infrastructure/enums/enums.dart';
import 'package:weather/meta_weather_api/infrastructure/location/lat_long.dart';
import 'package:weather/meta_weather_api/meta_weather_api.dart';

class FakeUri extends Fake implements Uri {}

class MockDio extends Mock implements Dio {}

class DioAdapterMock extends Mock implements HttpClientAdapter {}

class MockResponse<T> extends Mock implements Response<T> {}

void main() {
  group('MetaWeatherApiClient', () {
    late Dio mockDioClient;

    late DioAdapterMock dioAdapterMock;

    late MetaWeatherApiClient metaWeatherApiClient;

    setUpAll(() {
      registerFallbackValue(FakeUri());
    });

    setUp(() {
      mockDioClient = MockDio();
      dioAdapterMock = DioAdapterMock();
      mockDioClient.httpClientAdapter = dioAdapterMock;
      metaWeatherApiClient = MetaWeatherApiClient(mockDioClient);
    });

    group('locationSearch', () {
      const query = 'mock-query';
      test('makes correct http request', () async {
        final response = MockResponse<dynamic>();
        when(() => response.statusCode).thenReturn(200);
        when<dynamic>(() => response.data).thenReturn(<dynamic>[]);

        when(() => mockDioClient.getUri<dynamic>(any())).thenAnswer(
          (_) async => response,
        );
        try {
          await metaWeatherApiClient.locationSearch(query);
        } catch (_) {}
        verify(
          () => mockDioClient.getUri<dynamic>(
            Uri.https(
              'metaweather.com',
              '/api/location/search',
              <String, String>{'query': query},
            ),
          ),
        ).called(1);
      });

      test('throws LocationIdRequestFailure on non-200 response', () async {
        final response = MockResponse<dynamic>();
        when(() => response.statusCode).thenReturn(400);
        when(() => mockDioClient.getUri<dynamic>(any()))
            .thenAnswer((_) async => response);
        expect(
          () async => metaWeatherApiClient.locationSearch(query),
          throwsA(isA<LocationIdRequestException>()),
        );
      });

      test('throws LocationNotFoundFailure on empty response', () async {
        final response = MockResponse<dynamic>();
        when(() => response.statusCode).thenReturn(200);
        when<dynamic>(() => response.data).thenReturn(<dynamic>[]);
        when(() => mockDioClient.getUri<dynamic>(any()))
            .thenAnswer((_) async => response);
        await expectLater(
          metaWeatherApiClient.locationSearch(query),
          throwsA(isA<LocationNotFoundException>()),
        );
      });

      test('throws NetworkException when internet not available', () async {
        when(() => mockDioClient.getUri<dynamic>(any())).thenThrow(
          DioError(
            requestOptions: RequestOptions(path: query),
            error: SocketException,
          ),
        );

        try {
          await metaWeatherApiClient.locationSearch(query);
        } catch (e) {
          expect(e, isInstanceOf<NoInternetException>());
        }
      });

      test('returns Location on valid response', () async {
        final response = MockResponse<dynamic>();
        when(() => response.statusCode).thenReturn(200);
        when<dynamic>(() => response.data).thenReturn(
          [
            {
              'title': 'mock-title',
              'location_type': 'City',
              'latt_long': '-34.75,83.28',
              'woeid': 42
            }
          ],
        );
        when(() => mockDioClient.getUri<dynamic>(any()))
            .thenAnswer((_) async => response);
        final actual = await metaWeatherApiClient.locationSearch(query);
        expect(
          actual,
          isA<Location>()
              .having((l) => l.title, 'title', 'mock-title')
              .having((l) => l.locationType, 'type', LocationType.city)
              .having(
                (l) => l.lattLong,
                'latLng',
                isA<LatLong>()
                    .having((c) => c.latitude, 'latitude', -34.75)
                    .having((c) => c.longitude, 'longitude', 83.28),
              )
              .having((l) => l.woeid, 'woeid', 42),
        );
      });
    });

    group('getWeather', () {
      const locationId = 42;

      test('makes correct http request', () async {
        final response = MockResponse<dynamic>();
        when(() => response.statusCode).thenReturn(200);
        when<dynamic>(() => response.data).thenReturn(<String, dynamic>{});
        when(() => mockDioClient.getUri<dynamic>(any()))
            .thenAnswer((_) async => response);
        try {
          await metaWeatherApiClient.getWeather(locationId);
        } catch (_) {}
        verify(
          () => mockDioClient.getUri<dynamic>(
            Uri.https('metaweather.com', '/api/location/$locationId'),
          ),
        ).called(1);
      });

      test('throws WeatherRequestFailure on non-200 response', () async {
        final response = MockResponse<dynamic>();
        when(() => response.statusCode).thenReturn(400);
        when(() => mockDioClient.getUri<dynamic>(any()))
            .thenAnswer((_) async => response);
        expect(
          () async => metaWeatherApiClient.getWeather(locationId),
          throwsA(isA<WeatherRequestException>()),
        );
      });

      test('throws WeatherNotFoundFailure on empty response', () async {
        final response = MockResponse<dynamic>();
        when(() => response.statusCode).thenReturn(200);
        when<dynamic>(() => response.data).thenReturn(<String, dynamic>{});
        when(() => mockDioClient.getUri<dynamic>(any()))
            .thenAnswer((_) async => response);
        expect(
          () async => metaWeatherApiClient.getWeather(locationId),
          throwsA(isA<WeatherNotFoundException>()),
        );
      });

      test('throws WeatherNotFoundFailure on empty consolidated weather',
          () async {
        final response = MockResponse<dynamic>();
        when(() => response.statusCode).thenReturn(200);
        when<dynamic>(() => response.data).thenReturn(
          <String, dynamic>{'consolidated_weather': <dynamic>[]},
        );
        when(() => mockDioClient.getUri<dynamic>(any()))
            .thenAnswer((_) async => response);
        expect(
          () async => metaWeatherApiClient.getWeather(locationId),
          throwsA(isA<WeatherNotFoundException>()),
        );
      });
      test('throws NetworkException when internet not available', () async {
        when(() => mockDioClient.getUri<dynamic>(any())).thenThrow(
          DioError(
            requestOptions: RequestOptions(path: ''),
            error: SocketException,
          ),
        );

        try {
          await metaWeatherApiClient.getWeather(1);
        } catch (e) {
          expect(e, isInstanceOf<NoInternetException>());
        }
      });

      test('returns weather on valid response', () async {
        final response = MockResponse<dynamic>();
        when(() => response.statusCode).thenReturn(200);
        when<dynamic>(() => response.data).thenReturn({
          'consolidated_weather': [
            {
              'id': 4907479830888448,
              'weather_state_name': 'Showers',
              'weather_state_abbr': 's',
              'wind_direction_compass': 'SW',
              'created': '2020-10-26T00:20:01.840132Z',
              'applicable_date': '2020-10-26',
              'min_temp': 7.9399999999999995,
              'max_temp': 13.239999999999998,
              'the_temp': 12.825,
              'wind_speed': 7.876886316914553,
              'wind_direction': 246.17046093256732,
              'air_pressure': 997.0,
              'humidity': 73,
              'visibility': 11.037727173307882,
              'predictability': 73
            }
          ]
        });
        when(() => mockDioClient.getUri<dynamic>(any()))
            .thenAnswer((_) async => response);
        final actual = await metaWeatherApiClient.getWeather(locationId);
        expect(
          actual,
          isA<Weather>()
              .having((w) => w.id, 'id', 4907479830888448)
              .having((w) => w.weatherStateName, 'state', 'Showers')
              .having((w) => w.weatherStateAbbr, 'abbr', WeatherState.showers)
              .having(
                (w) => w.windDirectionCompass,
                'wind',
                WindDirectionCompass.southWest,
              )
              .having(
                (w) => w.created,
                'created',
                DateTime.parse('2020-10-26T00:20:01.840132Z'),
              )
              .having(
                (w) => w.applicableDate,
                'applicableDate',
                DateTime.parse('2020-10-26'),
              )
              .having((w) => w.minTemp, 'minTemp', 7.9399999999999995)
              .having((w) => w.maxTemp, 'maxTemp', 13.239999999999998)
              .having((w) => w.theTemp, 'theTemp', 12.825)
              .having((w) => w.windSpeed, 'windSpeed', 7.876886316914553)
              .having(
                (w) => w.windDirection,
                'windDirection',
                246.17046093256732,
              )
              .having((w) => w.airPressure, 'airPressure', 997.0)
              .having((w) => w.humidity, 'humidity', 73)
              .having((w) => w.visibility, 'visibility', 11.037727173307882)
              .having((w) => w.predictability, 'predictability', 73),
        );
      });
    });
  });
}
