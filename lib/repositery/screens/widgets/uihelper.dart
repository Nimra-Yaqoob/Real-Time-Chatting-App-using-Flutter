import 'package:flutter/material.dart';
import 'package:massenger_app/domain/constants/appcolors.dart';

class UiHelper {
  static Widget customImage({required String imgUrl}) {
    return Image.asset("assets/images/$imgUrl");
  }

  static Widget customText({
    required BuildContext context, // Added context
    required String text,
    required double fontSize,
    String? fontFamily,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily ?? "regular",
        color:
            color ??
            (Theme.of(context).brightness == Brightness.dark
                ? AppColors.textdarkmode
                : AppColors.textlightmode),
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }

  static Widget customButton({
    required String buttonName,
    required VoidCallback callback,
    Color? buttonColor,
  }) {
    return SizedBox(
      height: 45,
      width: 350,
      child: ElevatedButton(
        onPressed: callback, // fixed!
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? AppColors.buttonlightmode,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          buttonName,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  static CustomTextField({
    required TextEditingController contrller,
    required String text,
    required TextInputType textinputtype,
    required BuildContext context,
    required IconData icondata,
  }) {
    return Container(
      height: 45,
      width: 360,
      decoration: BoxDecoration(
        color:
            Theme.of(context).brightness == Brightness.dark
                ? AppColors.containerdarkmode
                : AppColors.containerlightmode,
        borderRadius: BorderRadius.circular(7),
      ),

      child: TextField(
        controller: contrller,
        keyboardType: textinputtype,
        decoration: InputDecoration(
          hintText: text,
          prefixIcon: Icon(icondata, color: AppColors.iconlight),
          prefix: Icon(icondata),
          hintStyle: TextStyle(
            color:
                Theme.of(context).brightness == Brightness.dark
                    ? AppColors.hintdarkmode
                    : AppColors.hintkightmode,
            fontSize: 14,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
