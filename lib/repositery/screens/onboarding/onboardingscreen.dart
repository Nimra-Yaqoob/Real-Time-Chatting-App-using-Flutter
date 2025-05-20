import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:massenger_app/domain/constants/cubits/themecubit.dart';
import 'package:massenger_app/repositery/screens/login/loginscreen.dart';
import 'package:massenger_app/repositery/screens/widgets/uihelper.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed:(){
            BlocProvider.of<ThemeCubit>(context).toggletheme();
          }, icon: Icon(Icons.dark_mode))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customImage(imgUrl: "onboarding.png",),
            const SizedBox(height: 20),
            UiHelper.customText(
              text: "Connect easily with",
              fontSize: 24,
              fontFamily: "bold",
              fontWeight: FontWeight.bold,context:context ),
            UiHelper.customText(
              text: "your family and friends",
              fontSize: 24,
              fontFamily: "bold",
              fontWeight: FontWeight.bold,context:context
            ),
            UiHelper.customText(
              text: "over countries",
              fontSize: 24,
              fontFamily: "bold",
              fontWeight: FontWeight.bold,context:context
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(buttonName: "Start Messaging", callback: (){
        Navigator.push(context, 
        MaterialPageRoute(builder: (context)=>LoginScreen()));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
