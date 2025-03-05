import 'package:ecommerce_app/constants/color_const.dart';
import 'package:ecommerce_app/constants/image_const.dart';
import 'package:ecommerce_app/constants/num_constants.dart';
import 'package:ecommerce_app/constants/text_const.dart';
import 'package:ecommerce_app/feature/auth/widgets/auth_widget.dart';
import 'package:ecommerce_app/util/device_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: NumConst.defaultPadding) +
            const EdgeInsets.only(top: DeviceUtil.toolBarHeight + 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.snowshoeing_outlined,
                color: DeviceUtil.isDarkMode(context)
                    ? ColorConst.whiteColor
                    : ColorConst.blackColor,
                size: 60,
              ),
              const SizedBox(
                height: NumConst.defaultPadding,
              ),
              Text(
                TextConst.loginTitle,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                TextConst.loginSubTitle,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: NumConst.defaultPadding,
              ),
              const AuthWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
