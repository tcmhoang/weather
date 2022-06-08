import 'package:flutter/painting.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

class ColorConverter extends JsonConverter<Color, String> {
  const ColorConverter();
  @override
  Color fromJson(String json) {
    return Color(int.parse(json));
  }

  @override
  String toJson(Color object) {
    return '${object.value}';
  }
}
