import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingController extends ChangeNotifier{
  final PageController _pageController = PageController();
  get pageController => _pageController;

  int _currentPage = 0;
  int get currentPage => _currentPage;

  void nextPage(BuildContext context){
    _currentPage++;
    if(currentPage >2){
      GoRouter.of(context).pushReplacementNamed(Routes.loginRoute,);
    } else{
      _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut,);
    }
  }

  void onPageChanged(int index){
    _currentPage = index;
  }

}