import 'package:ecommerce_app/constants/color_const.dart';
import 'package:ecommerce_app/constants/text_const.dart';
import 'package:ecommerce_app/util/device_util.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final Widget prefixImage;
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?) validator;
  final bool obscureText;
  final bool autoValidate;
  final Widget? suffixIcon;
  final TextInputType textInputType;
  final int? maxLength;

  const CustomTextFormField({
    super.key,
    required this.prefixImage,
    required this.hintText,
    required this.controller,
    required this.validator,
    this.obscureText = false,
    required this.autoValidate,
    this.suffixIcon,
    this.textInputType = TextInputType.text,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      keyboardType: textInputType,
      controller: controller,
      validator: validator,
      autovalidateMode: autoValidate ? AutovalidateMode.onUserInteraction : null,
      obscureText: obscureText,
      cursorColor: ColorConst.primaryColor,
      decoration: InputDecoration(
        labelText: hintText,
        counterText: '',
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 0.5,
            color: DeviceUtil.isDarkMode(context)
                ? ColorConst.whiteColor
                : ColorConst.blackColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 0.5,
            color: DeviceUtil.isDarkMode(context)
                ? ColorConst.whiteColor
                : ColorConst.blackColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:
              const BorderSide(color: ColorConst.primaryColor, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: 0.5,
            color: Colors.redAccent,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        width: 0.5,
        color: Colors.redAccent,
      ),
    ),
        prefixIcon: prefixImage,
        suffixIcon: suffixIcon,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
