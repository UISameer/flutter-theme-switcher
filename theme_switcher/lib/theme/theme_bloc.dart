import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial()) {
    on<ChangeThemeEvent>((event, emit) {
      if (event.randInt % 2 == 0) {
        emit(state.copyWith(appTheme: Apptheme.light));
      } else {
        emit(state.copyWith(appTheme: Apptheme.dark));
      }
    });
  }
}
