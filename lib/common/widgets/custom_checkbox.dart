import 'package:ecommerce_app/constants/color_const.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  final bool value;
  final void Function(bool?) onChanged;
  const CustomCheckBox({
    super.key, required this.value, required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: Colors.white,
      activeColor: ColorConst.primaryColor,
      value:value,
      onChanged: onChanged,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}