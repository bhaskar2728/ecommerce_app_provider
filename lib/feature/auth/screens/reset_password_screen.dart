import 'package:ecommerce_app/common/widgets/auth_button.dart';
import 'package:ecommerce_app/constants/color_const.dart';
import 'package:ecommerce_app/constants/image_const.dart';
import 'package:ecommerce_app/constants/num_constants.dart';
import 'package:ecommerce_app/constants/text_const.dart';
import 'package:ecommerce_app/feature/auth/controllers/create_account_controller.dart';
import 'package:ecommerce_app/util/device_util.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: GoRouter.of(context).pop,
            icon: const Icon(
              Icons.close_rounded,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: NumConst.defaultPadding,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: double.infinity,),
              Image.asset(ImageConst.onboarding1,
                  width: DeviceUtil.screenWidth(context) * 0.5,
                  height: DeviceUtil.screenHeight(context) * 0.4),
              Text(TextConst.resetPasswordHeading,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),),
              const SizedBox(height: 20,),
              Text('email@email.com',
              style: Theme.of(context).textTheme.labelMedium,),
              const SizedBox(height: NumConst.defaultPadding,),
              Text(TextConst.resetPasswordMsg,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: ColorConst.greyColor,
                ),
              textAlign: TextAlign.center,),
              const SizedBox(height: 35,),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: AuthButton(
                  btnText: TextConst.done,
                  onPressed: GoRouter.of(context).pop,
                ),
              ),
              const SizedBox(height: 30,),
              Text(TextConst.resendEmail,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: DeviceUtil.isDarkMode(context) ? ColorConst.greyColor : ColorConst.darkGreyColor,
                ),
                textAlign: TextAlign.center,),

            ],
          ),
        ),
      ),
    );
  }
}
