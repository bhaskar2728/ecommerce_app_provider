import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:ecommerce_app/util/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    init();
    super.initState();
  }

  void init() async {
    FlutterNativeSplash.remove();
    final bool isFirstTime = SharedPref.getBool(SharedPrefKey.isFirstTime) ??
        true;
    await Future.delayed(const Duration(seconds: 0));
    if(mounted){
      if (isFirstTime) {
        GoRouter.of(context).pushReplacementNamed(Routes.onBoardingRoute);
      } else {
        GoRouter.of(context).pushReplacementNamed(Routes.loginRoute);
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(

    );
  }
}
