import 'package:ecommerce_app/constants/color_const.dart';
import 'package:ecommerce_app/constants/image_const.dart';
import 'package:ecommerce_app/constants/text_const.dart';
import 'package:flutter/material.dart';

class LoginWithSSOWidget extends StatelessWidget {
  const LoginWithSSOWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 1,
              color: ColorConst.greyColor,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              TextConst.loginWith,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: ColorConst.greyColor,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              width: 100,
              height: 1,
              color: ColorConst.greyColor,
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: ColorConst.greyColor,
                  )),
              child: Image.asset(
                ImageConst.googleIcon,
                width: 20,
                height: 20,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: ColorConst.greyColor,
                  )),
              child: Image.asset(
                ImageConst.facebookIcon,
                width: 20,
                height: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}