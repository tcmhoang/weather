// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_initial _$$_initialFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_initial',
      json,
      ($checkedConvert) {
        final val = _$_initial(
          unit: $checkedConvert(
              'unit',
              (v) =>
                  $enumDecodeNullable(_$TemperatureUnitsEnumMap, v) ??
                  TemperatureUnits.celsius),
          weather: $checkedConvert(
              'weather', (v) => Weather.fromJson(v as Map<String, dynamic>)),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$_initialToJson(_$_initial instance) =>
    <String, dynamic>{
      'unit': _$TemperatureUnitsEnumMap[instance.unit],
      'weather': instance.weather.toJson(),
      'runtimeType': instance.$type,
    };

const _$TemperatureUnitsEnumMap = {
  TemperatureUnits.celsius: 'celsius',
  TemperatureUnits.fahrenheit: 'fahrenheit',
};

_$_loading _$$_loadingFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_loading',
      json,
      ($checkedConvert) {
        final val = _$_loading(
          unit: $checkedConvert(
              'unit',
              (v) =>
                  $enumDecodeNullable(_$TemperatureUnitsEnumMap, v) ??
                  TemperatureUnits.celsius),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$_loadingToJson(_$_loading instance) =>
    <String, dynamic>{
      'unit': _$TemperatureUnitsEnumMap[instance.unit],
      'runtimeType': instance.$type,
    };

_$_success _$$_successFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_success',
      json,
      ($checkedConvert) {
        final val = _$_success(
          unit: $checkedConvert(
              'unit',
              (v) =>
                  $enumDecodeNullable(_$TemperatureUnitsEnumMap, v) ??
                  TemperatureUnits.celsius),
          weather: $checkedConvert(
              'weather', (v) => Weather.fromJson(v as Map<String, dynamic>)),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$_successToJson(_$_success instance) =>
    <String, dynamic>{
      'unit': _$TemperatureUnitsEnumMap[instance.unit],
      'weather': instance.weather.toJson(),
      'runtimeType': instance.$type,
    };

_$_failure _$$_failureFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_failure',
      json,
      ($checkedConvert) {
        final val = _$_failure(
          unit: $checkedConvert(
              'unit',
              (v) =>
                  $enumDecodeNullable(_$TemperatureUnitsEnumMap, v) ??
                  TemperatureUnits.celsius),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$_failureToJson(_$_failure instance) =>
    <String, dynamic>{
      'unit': _$TemperatureUnitsEnumMap[instance.unit],
      'runtimeType': instance.$type,
    };
