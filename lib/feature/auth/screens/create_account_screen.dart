import 'package:ecommerce_app/constants/num_constants.dart';
import 'package:ecommerce_app/constants/text_const.dart';
import 'package:ecommerce_app/feature/auth/widgets/auth_create_account_widget.dart';
import 'package:ecommerce_app/util/device_util.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: NumConst.defaultPadding),
        child:  SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TextConst.letsCreateAccount,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 35,),
              const AuthCreateAccountWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
