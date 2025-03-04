import 'package:ecommerce_app/feature/auth/screens/login_screen.dart';
import 'package:ecommerce_app/feature/onboarding/screens/onboarding_screen.dart';
import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:go_router/go_router.dart';

class AppRouter{
  static GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: Routes.homeRoute,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        name: Routes.loginRoute,
        path: '/${Routes.loginRoute}',
        builder: (context, state) => const LoginScreen(),
      ),
    ],
  );
}