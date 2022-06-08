// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_applied _$$_appliedFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_applied',
      json,
      ($checkedConvert) {
        final val = _$_applied(
          color: $checkedConvert(
              'color', (v) => const ColorConverter().fromJson(v as String)),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$_appliedToJson(_$_applied instance) =>
    <String, dynamic>{
      'color': const ColorConverter().toJson(instance.color),
      'runtimeType': instance.$type,
    };

_$_updating _$$_updatingFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_updating',
      json,
      ($checkedConvert) {
        final val = _$_updating(
          color: $checkedConvert(
              'color', (v) => const ColorConverter().fromJson(v as String)),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$_updatingToJson(_$_updating instance) =>
    <String, dynamic>{
      'color': const ColorConverter().toJson(instance.color),
      'runtimeType': instance.$type,
    };
