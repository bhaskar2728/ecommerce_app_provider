import 'package:ecommerce_app/constants/color_const.dart';
import 'package:ecommerce_app/constants/text_const.dart';
import 'package:ecommerce_app/feature/auth/controllers/create_account_controller.dart';
import 'package:ecommerce_app/feature/auth/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        foregroundColor:
        MaterialStateProperty.all(ColorConst.whiteColor),
        backgroundColor:
        MaterialStateProperty.all(ColorConst.primaryColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      onPressed: context.read<CreateAccountController>().registerUser,
      child: Text(
        TextConst.registerButtonText,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
          color: ColorConst.whiteColor,
          fontWeight: FontWeight.bold,
        )
      ),
    );
  }
}