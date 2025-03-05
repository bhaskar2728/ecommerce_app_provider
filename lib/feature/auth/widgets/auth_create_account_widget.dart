import 'package:ecommerce_app/constants/color_const.dart';
import 'package:ecommerce_app/constants/text_const.dart';
import 'package:ecommerce_app/feature/auth/controllers/create_account_controller.dart';
import 'package:ecommerce_app/feature/auth/validators.dart';
import 'package:ecommerce_app/feature/auth/widgets/custom_text_form_field.dart';
import 'package:ecommerce_app/feature/auth/widgets/login_with_sso_widget.dart';
import 'package:ecommerce_app/feature/auth/widgets/register_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'terms_and_conditions_checkbox.dart';

class AuthCreateAccountWidget extends StatelessWidget {
  const AuthCreateAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<CreateAccountController>().formKey,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: CustomTextFormField(
                  prefixImage: const Icon(
                    Icons.person_2_outlined,
                    color: ColorConst.greyColor,
                  ),
                  hintText: TextConst.firstName,
                  validator: Validators.firstNameValidator,
                  controller: context
                      .read<CreateAccountController>()
                      .firstNameController,
                  obscureText: false,
                  autoValidate: true,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: CustomTextFormField(
                  prefixImage: const Icon(
                    Icons.person_2_outlined,
                    color: ColorConst.greyColor,
                  ),
                  hintText: TextConst.lastName,
                  controller: context
                      .read<CreateAccountController>()
                      .lastNameController,
                  validator: Validators.lastNameValidator,
                  obscureText: false,
                  autoValidate: true,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            prefixImage: const Icon(
              Icons.person_add_alt,
              color: ColorConst.greyColor,
            ),
            hintText: TextConst.username,
            controller:
                context.read<CreateAccountController>().usernameController,
            validator: Validators.usernameValidator,
            autoValidate: true,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            prefixImage: const Icon(
              Icons.person_add_alt,
              color: ColorConst.greyColor,
            ),
            hintText: TextConst.email,
            controller: context.read<CreateAccountController>().emailController,
            validator: Validators.emailValidator,
            autoValidate: true,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            prefixImage: const Icon(
              Icons.person_add_alt,
              color: ColorConst.greyColor,
            ),
            hintText: TextConst.phoneNumber,
            controller:
                context.read<CreateAccountController>().phoneNoController,
            validator: Validators.phoneValidator,
            autoValidate: true,
            textInputType: TextInputType.phone,
            maxLength: 10,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            prefixImage: const Icon(
              Icons.password_outlined,
              color: ColorConst.greyColor,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                context.watch<CreateAccountController>().obscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
                color: ColorConst.greyColor,
              ),
              onPressed:
                  context.read<CreateAccountController>().showHidePassword,
            ),
            hintText: TextConst.loginPasswordHint,
            controller:
                context.read<CreateAccountController>().passwordController,
            validator: Validators.passwordValidator,
            obscureText: context.watch<CreateAccountController>().obscureText,
            autoValidate: true,
          ),
          const SizedBox(
            height: 20,
          ),
          const TermsAndConditionsCheckBox(),
          const SizedBox(
            height: 30,
          ),
          // SignIn Button
          const SizedBox(
            width: double.infinity,
            height: 50,
            child: RegisterButton(),
          ),
          const SizedBox(height: 25),
          // Other Login Options
          const LoginWithSSOWidget(),
        ],
      ),
    );
  }
}
