import 'package:freezed_annotation/freezed_annotation.dart';

part 'temperature.freezed.dart';
part 'temperature.g.dart';

@freezed
class Temperature with _$Temperature {
  const Temperature._();

  const factory Temperature({required double value}) = _Temperature;

  // Needed for hydratedBloc to work
  factory Temperature.fromJson(Map<String, dynamic> json) =>
      _$TemperatureFromJson(json);
}
