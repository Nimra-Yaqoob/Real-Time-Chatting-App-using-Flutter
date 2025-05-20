import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:massenger_app/domain/constants/appcolors.dart';
import 'package:massenger_app/repositery/screens/widgets/uihelper.dart';

class ProfileScreen extends StatelessWidget {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.back),
        ),
        backgroundColor:
            Theme.of(context).brightness == Brightness.dark
                ? AppColors.scaffolddark
                : AppColors.scaffoldlight,
        title: UiHelper.customText(
          context: context,
          text: "Your Profile",
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Theme.of(context).brightness == Brightness.dark
                ? UiHelper.customImage(imgUrl: "darkprofile.png")
                : UiHelper.customImage(imgUrl: "lightprofile.png"),
            SizedBox(height: 30),
            UiHelper.CustomTextField(
              contrller: firstnameController,
              text: "First Name (Required)",
              textinputtype: TextInputType.name,
              context: context,
            
            ),
            SizedBox(height: 10,),
            UiHelper.CustomTextField(
              contrller: lastnameController,
              text: "Last Name (Required)",
              textinputtype: TextInputType.name,
              context: context,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat ,
      floatingActionButton: UiHelper.customButton(buttonName: "Sava", callback: (){}),
    );
  }
}
