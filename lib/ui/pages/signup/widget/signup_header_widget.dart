import 'package:delivery_indotl/domain/constants/image_strings.dart';
import 'package:delivery_indotl/domain/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupHeaderWidget extends StatelessWidget {
  const SignupHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double mediaQuerySize = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: mediaQuerySize * 0.2,
          child: SvgPicture.asset(tWelcomeScreenImage),
        ),
        Text(
          tSignUpTitle,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          tSignUpSubTitle,
          style: Theme.of(context).textTheme.bodyLarge,
        )
      ],
    );
  }
}
