import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:massenger_app/domain/constants/appthemes.dart';
import 'package:massenger_app/domain/constants/cubits/themecubit.dart';
import 'package:massenger_app/domain/constants/cubits/themestates.dart';
import 'package:massenger_app/repositery/screens/onboarding/onboardingscreen.dart';

void main() {
  runApp(BlocProvider(create: (_) => ThemeCubit(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit,Themestates>(
      builder: (context, state) {
        
        return MaterialApp(
        title: 'Message App',
        debugShowCheckedModeBanner: false,
        theme: state is LightThemeStates ? AppThemes.lightTheme:AppThemes.darkTheme,
        home: OnBoardingScreen()
      );
      }
    );
  
  }
}

