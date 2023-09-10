// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'theme_bloc.dart';

enum Apptheme { light, dark }

class ThemeState extends Equatable {
  final Apptheme appTheme;

  ThemeState({
    this.appTheme = Apptheme.light,
  });

  factory ThemeState.initial() {
    return ThemeState();
  }

  @override
  List<Object> get props => [Apptheme];

  ThemeState copyWith({
    Apptheme? appTheme,
  }) {
    return ThemeState(
      appTheme: appTheme ?? this.appTheme,
    );
  }

  @override
  String toString() => 'ThemeState(appTheme: $appTheme)';
}
