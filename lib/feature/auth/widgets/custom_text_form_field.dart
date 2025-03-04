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

  const CustomTextFormField({
    super.key,
    required this.prefixImage,
    required this.hintText,
    required this.controller,
    required this.validator,
    required this.obscureText,
    required this.autoValidate,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      autovalidateMode: autoValidate ? AutovalidateMode.onUserInteraction : null,
      obscureText: obscureText,
      cursorColor: ColorConst.primaryColor,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
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
        prefixIcon: prefixImage,
        suffixIcon: suffixIcon,
        border: const OutlineInputBorder(),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
