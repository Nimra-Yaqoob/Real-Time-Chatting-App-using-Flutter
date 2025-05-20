import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:massenger_app/domain/constants/cubits/themestates.dart';

class ThemeCubit extends Cubit<Themestates>{
  ThemeCubit():super(LightThemeStates());

  void toggletheme(){
    if(state is LightThemeStates)
    {
      emit(DarkThemeStates());
    }
    else{
      emit(LightThemeStates());
    }
  }
}