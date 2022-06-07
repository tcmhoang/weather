// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Weather',
      json,
      ($checkedConvert) {
        final val = _$_Weather(
          condition: $checkedConvert(
              'condition', (v) => $enumDecode(_$WeatherConditionEnumMap, v)),
          lastUpdated: $checkedConvert(
              'last_updated', (v) => DateTime.parse(v as String)),
          location: $checkedConvert('location', (v) => v as String),
          temperature: $checkedConvert('temperature',
              (v) => Temperature.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'lastUpdated': 'last_updated'},
    );

Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'condition': _$WeatherConditionEnumMap[instance.condition],
      'last_updated': instance.lastUpdated.toIso8601String(),
      'location': instance.location,
      'temperature': instance.temperature.toJson(),
    };

const _$WeatherConditionEnumMap = {
  WeatherCondition.clear: 'clear',
  WeatherCondition.rainy: 'rainy',
  WeatherCondition.cloudy: 'cloudy',
  WeatherCondition.snowy: 'snowy',
  WeatherCondition.unknown: 'unknown',
};
