import 'package:delivery_indotl/domain/constants/image_strings.dart';
import 'package:delivery_indotl/domain/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double mediaQuerySize = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: mediaQuerySize * 0.2,
          child: SvgPicture.asset(tWelcomeScreenImage),
        ),
        Text(
          tLoginTitle,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          tLoginSubTitle,
          style: Theme.of(context).textTheme.bodyLarge,
        )
      ],
    );
  }
}
