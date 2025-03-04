import 'package:ecommerce_app/constants/color_const.dart';
import 'package:ecommerce_app/constants/text_const.dart';
import 'package:ecommerce_app/feature/auth/controllers/login_controller.dart';
import 'package:ecommerce_app/util/device_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        foregroundColor: DeviceUtil.isDarkMode(context)
            ? MaterialStateProperty.all(ColorConst.whiteColor)
            : MaterialStateProperty.all(ColorConst.blackColor),
        backgroundColor: MaterialStateProperty.all(
            DeviceUtil.isDarkMode(context)
                ? Theme.of(context).scaffoldBackgroundColor
                : Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color: DeviceUtil.isDarkMode(context)
                  ? ColorConst.whiteColor
                  : ColorConst.blackColor,
              width: 0.5,
            ),
          ),
        ),
      ),
      onPressed: context.read<LoginController>().createAccount,
      child:  Text(
        TextConst.createAccount,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}