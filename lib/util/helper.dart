import 'package:ecommerce_app/constants/color_const.dart';
import 'package:ecommerce_app/constants/num_constants.dart';
import 'package:flutter/material.dart';

class Helper {
  static void showErrorSnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  static void showMessageSnackBar({required String heading, required String msg, required BuildContext context}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: ColorConst.msgSnackBarColor,
            borderRadius: BorderRadius.all(Radius.circular(10),),
          ),
          child: Row(
            children: [
              const Icon(Icons.info_outline_rounded),
              const SizedBox(width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(heading,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: ColorConst.whiteColor,
                    ),),
                    const SizedBox(height: 10,),
                    Text(msg,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: ColorConst.whiteColor,
                        fontSize: 12,
                      ),),
                  ],
                ),
              )
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 3,
        duration: const Duration(seconds: NumConst.snackBarDisplayDuration,),
      )
    );
  }
}