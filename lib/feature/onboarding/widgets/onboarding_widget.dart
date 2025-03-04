import 'package:ecommerce_app/util/device_util.dart';
import 'package:flutter/material.dart';

class OnBoardingWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imgPath;

  const OnBoardingWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          Image.asset(
            imgPath,
            width: DeviceUtil.screenWidth(context) * 0.6,
            height: DeviceUtil.screenHeight(context) * 0.6,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
