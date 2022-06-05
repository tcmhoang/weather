// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Location',
      json,
      ($checkedConvert) {
        final val = _$_Location(
          title: $checkedConvert('title', (v) => v as String),
          locationType: $checkedConvert(
              'location_type', (v) => $enumDecode(_$LocationTypeEnumMap, v)),
          lattLong: $checkedConvert('latt_long',
              (v) => const LatLongConverter().fromJson(v as String)),
          woeid: $checkedConvert('woeid', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'locationType': 'location_type',
        'lattLong': 'latt_long'
      },
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'title': instance.title,
      'location_type': _$LocationTypeEnumMap[instance.locationType],
      'latt_long': const LatLongConverter().toJson(instance.lattLong),
      'woeid': instance.woeid,
    };

const _$LocationTypeEnumMap = {
  LocationType.city: 'City',
  LocationType.region: 'Region',
  LocationType.state: 'State',
  LocationType.province: 'Province',
  LocationType.country: 'Country',
  LocationType.continent: 'Continent',
};
