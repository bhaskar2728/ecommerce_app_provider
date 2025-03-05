import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginController extends ChangeNotifier {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

  bool _obscureText = true;
  bool get obscureText => _obscureText;

  bool _shouldRememberMe = false;
  bool get shouldRememberMe => _shouldRememberMe;

  void updateShouldRememberMe(bool? value){
    _shouldRememberMe = !shouldRememberMe;
    notifyListeners();
  }

  void showHidePassword(){
    _obscureText = !obscureText;
    notifyListeners();
  }

  void signIn(){
    if(_formKey.currentState!.validate()){
      print("KDEBUG::Form validated");
    } else{
      print("KDEBUG::Form not validated");
    }
  }

  void createAccount(BuildContext context){
    GoRouter.of(context).pushNamed(Routes.createAccountRoute);
  }
}