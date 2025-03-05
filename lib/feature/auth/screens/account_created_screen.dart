import 'package:ecommerce_app/constants/color_const.dart';
import 'package:ecommerce_app/constants/image_const.dart';
import 'package:ecommerce_app/constants/num_constants.dart';
import 'package:ecommerce_app/constants/text_const.dart';
import 'package:ecommerce_app/feature/auth/widgets/continue_button.dart';
import 'package:ecommerce_app/util/device_util.dart';
import 'package:flutter/material.dart';

class AccountCreatedScreen extends StatelessWidget {
  const AccountCreatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,),
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
              Text(TextConst.accountCreatedMsg,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              textAlign: TextAlign.center,),
              const SizedBox(height: NumConst.defaultPadding,),
              Text(TextConst.welcomeMsg,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: ColorConst.greyColor,
                ),
                textAlign: TextAlign.center,),
              const SizedBox(height: 30,),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ContinueButton(
                  onPressed: (){},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
