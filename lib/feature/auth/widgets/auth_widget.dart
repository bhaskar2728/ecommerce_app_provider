import 'package:ecommerce_app/constants/color_const.dart';
import 'package:ecommerce_app/constants/image_const.dart';
import 'package:ecommerce_app/constants/text_const.dart';
import 'package:ecommerce_app/feature/auth/controllers/login_controller.dart';
import 'package:ecommerce_app/feature/auth/validators.dart';
import 'package:ecommerce_app/feature/auth/widgets/create_account_button.dart';
import 'package:ecommerce_app/feature/auth/widgets/custom_text_form_field.dart';
import 'package:ecommerce_app/feature/auth/widgets/login_with_sso_widget.dart';
import 'package:ecommerce_app/util/device_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'remember_me_checkbox.dart';
import 'sign_in_button.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginController>().formKey,
      child: Column(
        children: [
          // Email TextFormField
          CustomTextFormField(
            prefixImage: const Icon(
              Icons.email_outlined,
              color: ColorConst.greyColor,
            ),
            hintText: TextConst.loginEmailHint,
            controller: context.read<LoginController>().emailController,
            validator: Validators.emailValidator,
            obscureText: false,
            autoValidate: true,
          ),
          const SizedBox(
            height: 20,
          ),
          // Password TextFormField
          CustomTextFormField(
            prefixImage: const Icon(
              Icons.password_outlined,
              color: ColorConst.greyColor,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                context.watch<LoginController>().obscureText ? Icons.visibility_off : Icons.visibility,
                color: ColorConst.greyColor,
              ),
              onPressed: context.read<LoginController>().showHidePassword,
            ),
            hintText: TextConst.loginPasswordHint,
            controller: context.read<LoginController>().passwordController,
            validator: Validators.passwordValidator,
            obscureText: context.watch<LoginController>().obscureText,
            autoValidate: true,
          ),
          const SizedBox(
            height: 15,
          ),
          // Remember Me Checkbox
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const RememberMeCheckbox(),
              Text(
                TextConst.forgotPassword,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: DeviceUtil.isDarkMode(context)
                          ? ColorConst.whiteColor.withOpacity(0.5)
                          : ColorConst.darkGreyColor,
                    ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          // SignIn Button
          const SizedBox(
            width: double.infinity,
            height: 50,
            child: SignInButton(),
          ),
          const SizedBox(
            height: 20,
          ),
          // Create Account Button
          const SizedBox(
            width: double.infinity,
            height: 50,
            child: CreateAccountButton(),
          ),
          const SizedBox(height: 25),
          // Other Login Options
          const LoginWithSSOWidget(),
        ],
      ),
    );
  }
}
