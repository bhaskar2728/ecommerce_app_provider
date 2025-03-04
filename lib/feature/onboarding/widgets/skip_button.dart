import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text('Skip',
        style: Theme.of(context).textTheme.labelLarge,),
      onPressed: ()=>GoRouter.of(context).pushReplacementNamed(Routes.loginRoute,),
    );
  }
}