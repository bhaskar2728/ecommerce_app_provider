import 'package:ecommerce_app/feature/onboarding/controller/onboarding_controller.dart';
import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text('Skip',
        style: Theme.of(context).textTheme.labelLarge,),
      onPressed: ()=>context.read<OnBoardingController>().finishOnboarding(context),
    );
  }
}