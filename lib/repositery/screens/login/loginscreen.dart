import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:massenger_app/domain/constants/appcolors.dart';
import 'package:massenger_app/repositery/screens/otd/otpscreen.dart';
import 'package:massenger_app/repositery/screens/widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController phoneController=TextEditingController();

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
        ?AppColors.scaffolddark
        :AppColors.scaffoldlight,
        leading: IconButton(onPressed: (){ 
          Navigator.pop(context);
        }, icon: Icon(CupertinoIcons.back)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                UiHelper.customText(
                  text: "Enter Your Phone Number", 
                  fontSize: 24,
                  context: context,
                  fontWeight: FontWeight.bold,
                  fontFamily: "bold" ),
                   SizedBox(
                    height: 10,
                  ),
                UiHelper.customText(
                  text: "Please confirm your country code annd  enter", 
                  fontSize: 14,
                  context: context),
                UiHelper.customText(
                  text: "Your Phone Number",
                  fontSize: 14,
                  context: context),
                  SizedBox(
                    height: 20,
                  ),
                  UiHelper.CustomTextField(contrller: phoneController, text: "Phone Number", textinputtype: TextInputType.number, context: context)
          ],  
        ),
      ),
      floatingActionButton: UiHelper.customButton(buttonName: "Continue", callback: (){
        Navigator.push(context, MaterialPageRoute(builder:(context)=>OTPScreen()));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}