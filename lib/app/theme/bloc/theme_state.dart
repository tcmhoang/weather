part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.applied({@ColorConverter() required Color color}) =
      _applied;
  const factory ThemeState.updating({@ColorConverter() required Color color}) =
      _updating;

  factory ThemeState.fromJson(Map<String, dynamic> json) =>
      _$ThemeStateFromJson(json);
}
