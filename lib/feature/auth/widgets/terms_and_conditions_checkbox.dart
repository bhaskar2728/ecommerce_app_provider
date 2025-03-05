import 'package:ecommerce_app/common/widgets/custom_checkbox.dart';
import 'package:ecommerce_app/constants/color_const.dart';
import 'package:ecommerce_app/feature/auth/controllers/create_account_controller.dart';
import 'package:ecommerce_app/util/device_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class TermsAndConditionsCheckBox extends StatelessWidget {
  const TermsAndConditionsCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CustomCheckBox(
              value: context.watch<CreateAccountController>().acceptedTermsAndConditions,
              onChanged: context.read<CreateAccountController>().updateAcceptTAndC,
            ),
            RichText(
              text: TextSpan(
                  text: 'I agree to ',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: ColorConst.greyColor,
                  ),
                  children: [
                    TextSpan(text: 'Privacy Policy ',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        decoration: TextDecoration.underline,
                        color: DeviceUtil.isDarkMode(context) ? ColorConst.whiteColor : ColorConst.primaryColor,
                      ),),
                    TextSpan(text: 'and',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: ColorConst.greyColor,
                      ),),
                    TextSpan(text: ' Terms of Use',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        decoration: TextDecoration.underline,
                        color: DeviceUtil.isDarkMode(context) ? ColorConst.whiteColor : ColorConst.primaryColor,
                      ),),
                  ]),
            )
          ],
        ),
      ],
    );
  }
}