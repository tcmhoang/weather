// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Temperature _$$_TemperatureFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_Temperature',
      json,
      ($checkedConvert) {
        final val = _$_Temperature(
          value: $checkedConvert('value', (v) => (v as num).toDouble()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_TemperatureToJson(_$_Temperature instance) =>
    <String, dynamic>{
      'value': instance.value,
    };
