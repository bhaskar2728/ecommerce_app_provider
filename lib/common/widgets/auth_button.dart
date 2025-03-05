import 'package:ecommerce_app/constants/color_const.dart';
import 'package:ecommerce_app/constants/text_const.dart';
import 'package:ecommerce_app/feature/auth/controllers/create_account_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthButton extends StatelessWidget {
  final void Function() onPressed;
  final String btnText;

  const AuthButton({
    super.key,
    required this.onPressed,
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(ColorConst.whiteColor),
        backgroundColor: MaterialStateProperty.all(ColorConst.primaryColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(btnText,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: ColorConst.whiteColor,
              )),
    );
  }
}
