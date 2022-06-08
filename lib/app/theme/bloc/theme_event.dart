part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.weatherUpdate({required Weather weather}) =
      _weatherUpdate;
  const factory ThemeEvent.submit({required Weather weather}) = _Submit;
}
