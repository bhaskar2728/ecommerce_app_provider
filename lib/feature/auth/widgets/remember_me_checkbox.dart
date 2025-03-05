import 'package:ecommerce_app/common/widgets/custom_checkbox.dart';
import 'package:ecommerce_app/constants/text_const.dart';
import 'package:ecommerce_app/feature/auth/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class RememberMeCheckbox extends StatelessWidget {
  const RememberMeCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          value: context.watch<LoginController>().shouldRememberMe,
          onChanged: context.read<LoginController>().updateShouldRememberMe,
        ),
        Text(
          TextConst.rememberMe,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}