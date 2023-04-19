import 'package:delivery_indotl/domain/repositories/model_on_boarding.dart';
import 'package:flutter/material.dart';

import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../domain/constants/colors.dart';
import '../../../domain/constants/image_strings.dart';
import '../../../domain/constants/text_string.dart';
import 'on_boarding_page_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = LiquidController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    dynamic onBoardingPages = <OnBoardingPageWidget>[
      OnBoardingPageWidget(
          model: OnboardingModel(
        image: tOnboardingImage1,
        title: tOnBoardingTitle1,
        subTitle: tOnBoardingSubTitle1,
        counterText: tOnBoardingCounter1,
        bgColor: tOnboardingPage1Color,
        size: size.height,
      )),
      OnBoardingPageWidget(
          model: OnboardingModel(
        image: tOnboardingImage2,
        title: tOnBoardingTitle2,
        subTitle: tOnBoardingSubTitle2,
        counterText: tOnBoardingCounter2,
        bgColor: tOnboardingPage2Color,
        size: size.height,
      )),
      OnBoardingPageWidget(
          model: OnboardingModel(
        image: tOnboardingImage3,
        title: tOnBoardingTitle3,
        subTitle: tOnBoardingSubTitle3,
        counterText: tOnBoardingCounter3,
        bgColor: tOnboardingPage3Color,
        size: size.height,
      )),
    ];

    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        LiquidSwipe(
          pages: onBoardingPages,
          liquidController: controller,
          onPageChangeCallback: onPageChangeCallback,
          slideIconWidget: const Icon(Icons.arrow_back_ios),
          enableSideReveal: true,
        ),
        Positioned(
          bottom: 60.0,
          child: OutlinedButton(
            onPressed: () {
              int nextPage = controller.currentPage + 1;
              controller.animateToPage(page: nextPage);
            },
            style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                foregroundColor: Colors.white),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.arrow_forward_ios),
            ),
          ),
        ),
        Positioned(
          top: 50,
          right: 20,
          child: TextButton(
              onPressed: () => controller.jumpToPage(page: 1),
              child: const Text("Skip", style: TextStyle(color: Colors.grey))),
        ),
        Positioned(
          bottom: 10,
          child: AnimatedSmoothIndicator(
            count: 3,
            activeIndex: controller.currentPage,
            effect: const WormEffect(
                activeDotColor: Color(0xFF272727), dotHeight: 5.0),
          ),
        )
      ]),
    );
  }

  onPageChangeCallback(int activePageIndex) {
    setState(() {
      currentPage = activePageIndex;
    });
  }
}
