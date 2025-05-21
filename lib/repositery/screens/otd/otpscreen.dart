import 'package:flutter/material.dart';
import 'package:massenger_app/domain/constants/appcolors.dart';
import 'package:massenger_app/repositery/screens/profile/profilescreen.dart';
import 'package:massenger_app/repositery/screens/widgets/uihelper.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatelessWidget {
  TextEditingController otpController = TextEditingController();

  OTPScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
      fontSize: 20,
      color: Theme.of(context).brightness == Brightness.dark?
      Colors.white:Colors.black,  
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(7),
    ),
  );
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
    color: Theme.of(context).brightness == Brightness.dark? AppColors.otpdarkmode: AppColors.otplightmode,
      borderRadius: BorderRadius.circular(7),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Theme.of(context).brightness == Brightness.dark? AppColors.otpdarkmode: AppColors.otplightmode,
      ),
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customText(
              context: context,
              text: "Enter Code",
              fontSize: 24,
              fontFamily: "bold",
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 5),
            UiHelper.customText(
              context: context,
              text: "We have sent you an SMS with he code",
              fontSize: 14,
            ),
            UiHelper.customText(
              context: context,
              text: "to +92 220 - 9179 - 019",
              fontSize: 14,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Pinput(
                onCompleted: (value){//directly work without press enter
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>ProfileScreen()));
                }, 
                onSubmitted: (value){//work on enter button
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>ProfileScreen()));
                }, 
                  autofocus: true,
                controller: otpController,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
              ),
            ),
           
          ],
        ),
      ),
      floatingActionButton:  
            TextButton(onPressed: (){}, 
            child: Text("Resend OTP",
            style: TextStyle(fontSize: 16,
            color:Theme.of(context).brightness == Brightness.dark ?
             AppColors.otptextdark
             :AppColors.otptextlight
             )),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat ,
    );
  }
}
