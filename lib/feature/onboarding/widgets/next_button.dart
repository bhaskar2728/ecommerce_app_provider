import 'package:ecommerce_app/feature/onboarding/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      onPressed: ()=>context.read<OnBoardingController>().nextPage(context),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10,),
        child: const Icon(Icons.keyboard_arrow_right_rounded,
          size: 35,),
      ),
    );
  }
}