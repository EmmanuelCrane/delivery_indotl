import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:delivery_indotl/domain/repositories/model_on_boarding.dart';
import 'package:delivery_indotl/domain/constants/sizes.dart';

class OnBoardingPageWidget extends StatelessWidget {
  final OnboardingModel model;

  const OnBoardingPageWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
              height: model.size * 0.4, child: SvgPicture.asset(model.image)),
          Column(
            children: <Widget>[
              Text(model.title,
                  style: Theme.of(context).textTheme.displaySmall),
              Text(
                model.subTitle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text(
            model.counterText,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 80.0,
          )
        ],
      ),
    );
  }
}
