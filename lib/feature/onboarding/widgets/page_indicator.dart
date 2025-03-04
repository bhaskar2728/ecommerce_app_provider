import 'package:ecommerce_app/constants/color_const.dart';
import 'package:ecommerce_app/feature/onboarding/controller/onboarding_controller.dart';
import 'package:ecommerce_app/util/device_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      count: 3,
      effect: ExpandingDotsEffect(
        dotWidth: 10,
        dotHeight: 10,
        dotColor: Colors.grey,
        activeDotColor: DeviceUtil.isDarkMode(context)
            ? ColorConst.darkActiveColor
            : ColorConst.lightActiveColor,
      ),
      controller: context.read<OnBoardingController>().pageController,
    );
  }
}