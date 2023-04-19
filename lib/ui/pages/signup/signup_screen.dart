import 'package:delivery_indotl/domain/constants/image_strings.dart';
import 'package:delivery_indotl/domain/constants/sizes.dart';
import 'package:delivery_indotl/domain/constants/text_string.dart';
import 'package:delivery_indotl/ui/pages/signup/widget/signup_form_widget.dart';
import 'package:delivery_indotl/ui/pages/signup/widget/signup_header_widget.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SignupHeaderWidget(),
            const SignupFormWidget(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("OR", style: Theme.of(context).textTheme.labelLarge),
                const SizedBox(
                  height: tFormHeight - 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage(tGoogleLogoImage),
                        width: 20.0,
                      ),
                      label: const Text(tSignInWithGoogle)),
                ),
                const SizedBox(
                  height: tFormHeight - 20,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text.rich(TextSpan(
                        text: tAlreadyHaveAnAccount,
                        style: Theme.of(context).textTheme.bodyLarge,
                        children: const [
                          TextSpan(
                              text: tLogin,
                              style: TextStyle(color: Colors.blue))
                        ])))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
