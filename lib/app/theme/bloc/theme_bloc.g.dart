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
        );
        return val;
      },
    );

Map<String, dynamic> _$$_appliedToJson(_$_applied instance) =>
    <String, dynamic>{
      'color': const ColorConverter().toJson(instance.color),
    };
