import 'package:ecommerce_app/feature/auth/controllers/create_account_controller.dart';
import 'package:ecommerce_app/feature/auth/controllers/login_controller.dart';
import 'package:ecommerce_app/feature/onboarding/controller/onboarding_controller.dart';
import 'package:ecommerce_app/feature/onboarding/screens/onboarding_screen.dart';
import 'package:ecommerce_app/routes/app_route_config.dart';
import 'package:ecommerce_app/util/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => OnBoardingController(),
      ),
      ChangeNotifierProvider(
        create: (_) => LoginController(),
      ),
      ChangeNotifierProvider(
        create: (_) => CreateAccountController(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.goRouter,
      title: 'Flutter Demo',
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.system,
    );
  }
}
