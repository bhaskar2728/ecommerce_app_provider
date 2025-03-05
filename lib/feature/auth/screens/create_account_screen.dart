import 'package:ecommerce_app/constants/text_const.dart';
import 'package:ecommerce_app/feature/auth/widgets/auth_create_account_widget.dart';
import 'package:ecommerce_app/util/device_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: DeviceUtil.isDarkMode(context) ? SystemUiOverlayStyle.light: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        foregroundColor: DeviceUtil.isDarkMode(context) ? Colors.white : Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
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
