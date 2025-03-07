import 'package:ecommerce_app/constants/text_const.dart';
import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:ecommerce_app/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateAccountController extends ChangeNotifier {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  GlobalKey<FormState> get formKey => _formKey;

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneNoController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  TextEditingController get firstNameController => _firstNameController;

  TextEditingController get lastNameController => _lastNameController;

  TextEditingController get usernameController => _usernameController;

  TextEditingController get phoneNoController => _phoneNoController;

  TextEditingController get passwordController => _passwordController;

  TextEditingController get emailController => _emailController;

  bool _obscureText = true;

  bool get obscureText => _obscureText;

  bool _acceptedTermsAndConditions = false;

  bool get acceptedTermsAndConditions => _acceptedTermsAndConditions;

  void showHidePassword() {
    _obscureText = !obscureText;
    notifyListeners();
  }

  void updateAcceptTAndC(bool? value) {
    _acceptedTermsAndConditions = !acceptedTermsAndConditions;
    notifyListeners();
  }

  void registerUser(BuildContext context) {
    // _formKey.currentState!.validate();
    if (!acceptedTermsAndConditions) {
      Helper.showMessageSnackBar(
        heading: TextConst.acceptPrivacyPolicy,
        msg: TextConst.acceptPrivacyPolicyMsg,
        context: context,
      );
      return;
    }

    GoRouter.of(context).pushReplacementNamed(Routes.emailVerificationRoute);
  }

  void verifyEmail(BuildContext context) {
    GoRouter.of(context).pushReplacementNamed(Routes.accountCreatedRoute);
  }
}
