import 'package:ecommerce_app/constants/color_const.dart';
import 'package:ecommerce_app/feature/auth/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: Colors.white,
      activeColor: ColorConst.primaryColor,
      value: context.watch<LoginController>().shouldRememberMe,
      onChanged: (value)=>context.read<LoginController>().updateShouldRememberMe(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}