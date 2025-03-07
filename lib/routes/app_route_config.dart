import 'package:ecommerce_app/feature/auth/screens/account_created_screen.dart';
import 'package:ecommerce_app/feature/auth/screens/create_account_screen.dart';
import 'package:ecommerce_app/feature/auth/screens/email_verification_screen.dart';
import 'package:ecommerce_app/feature/auth/screens/forgot_password_screen.dart';
import 'package:ecommerce_app/feature/auth/screens/login_screen.dart';
import 'package:ecommerce_app/feature/auth/screens/reset_password_screen.dart';
import 'package:ecommerce_app/feature/onboarding/screens/onboarding_screen.dart';
import 'package:ecommerce_app/feature/splash/screens/splash_screen.dart';
import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:go_router/go_router.dart';

class AppRouter{
  static GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: Routes.homeRoute,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        name: Routes.onBoardingRoute,
        path: '/${Routes.onBoardingRoute}',
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        name: Routes.loginRoute,
        path: '/${Routes.loginRoute}',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        name: Routes.createAccountRoute,
        path: '/${Routes.createAccountRoute}',
        builder: (context, state) => const CreateAccountScreen(),
      ),
      GoRoute(
        name: Routes.emailVerificationRoute,
        path: '/${Routes.emailVerificationRoute}',
        builder: (context, state) => const EmailVerificationScreen(),
      ),
      GoRoute(
        name: Routes.accountCreatedRoute,
        path: '/${Routes.accountCreatedRoute}',
        builder: (context, state) => const AccountCreatedScreen(),
      ),
      GoRoute(
        name: Routes.forgotPasswordRoute,
        path: '/${Routes.forgotPasswordRoute}',
        builder: (context, state) => ForgotPasswordScreen(),
      ),
      GoRoute(
        name: Routes.resetPasswordRoute,
        path: '/${Routes.resetPasswordRoute}',
        builder: (context, state) => const ResetPasswordScreen(),
      ),
    ],
  );
}