import 'package:ecommerce_app/common/widgets/auth_button.dart';
import 'package:ecommerce_app/constants/color_const.dart';
import 'package:ecommerce_app/constants/num_constants.dart';
import 'package:ecommerce_app/constants/text_const.dart';
import 'package:ecommerce_app/feature/auth/validators.dart';
import 'package:ecommerce_app/feature/auth/widgets/custom_text_form_field.dart';
import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  final TextEditingController controller = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: GoRouter.of(context).pop,
            icon: const Icon(
              Icons.close_rounded,
            ),
          )
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: NumConst.defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TextConst.forgotPasswordHeading,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(
              height: NumConst.defaultPadding,
            ),
            Text(
              TextConst.forgotPasswordMsg,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: ColorConst.greyColor,
                  ),
            ),
            const SizedBox(
              height: 40,
            ),
            Form(
              child: CustomTextFormField(
                prefixImage: const Icon(
                  Icons.email_outlined,
                  color: ColorConst.greyColor,
                ),
                hintText: TextConst.loginEmailHint,
                controller: controller,
                validator: Validators.emailValidator,
                obscureText: false,
                autoValidate: true,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: AuthButton(
                onPressed: () => onSubmit(context),
                btnText: TextConst.submitText,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onSubmit(BuildContext context) {
    GoRouter.of(context).pushReplacementNamed(Routes.resetPasswordRoute);
  }
}
