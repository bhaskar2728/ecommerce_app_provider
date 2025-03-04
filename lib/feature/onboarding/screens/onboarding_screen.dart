import 'package:ecommerce_app/constants/color_const.dart';
import 'package:ecommerce_app/constants/image_const.dart';
import 'package:ecommerce_app/constants/text_const.dart';
import 'package:ecommerce_app/feature/onboarding/controller/onboarding_controller.dart';
import 'package:ecommerce_app/feature/onboarding/widgets/next_button.dart';
import 'package:ecommerce_app/feature/onboarding/widgets/onboarding_widget.dart';
import 'package:ecommerce_app/feature/onboarding/widgets/page_indicator.dart';
import 'package:ecommerce_app/feature/onboarding/widgets/skip_button.dart';
import 'package:ecommerce_app/util/device_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: context.read<OnBoardingController>().pageController,
            onPageChanged: context.read<OnBoardingController>().onPageChanged,
            children: const [
              OnBoardingWidget(
                title: TextConst.onBoardingTitle1,
                subtitle: TextConst.onBoardingSubTitle1,
                imgPath: ImageConst.onboarding1,
              ),
              OnBoardingWidget(
                title: TextConst.onBoardingTitle2,
                subtitle: TextConst.onBoardingSubTitle2,
                imgPath: ImageConst.onboarding2,
              ),
              OnBoardingWidget(
                title: TextConst.onBoardingTitle3,
                subtitle: TextConst.onBoardingSubTitle3,
                imgPath: ImageConst.onboarding3,
              ),
            ],
          ),
          const Positioned(
            top: DeviceUtil.toolBarHeight,
            right: 20,
            child: SkipButton(),
          ),
          const Positioned(
            bottom: DeviceUtil.bottomNavBarHeight+20,
            left: 20,
            child: PageIndicator(
            ),
          ),
          const Positioned(
            bottom: DeviceUtil.bottomNavBarHeight,
            right: 20,
            child: NextButton(),
          )
        ],
      ),
    );
  }
}




