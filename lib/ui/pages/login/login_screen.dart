import 'package:delivery_indotl/domain/constants/image_strings.dart';
import 'package:delivery_indotl/domain/constants/sizes.dart';
import 'package:delivery_indotl/domain/constants/text_string.dart';
import 'package:delivery_indotl/ui/pages/login/widget/login_form_widget.dart';
import 'package:delivery_indotl/ui/pages/login/widget/login_header_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const LoginHeaderWidget(),
                const LoginFormWidget(),
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
                                  text: tSignup,
                                  style: TextStyle(color: Colors.blue))
                            ])))
                  ],
                ),
              ],
            )));
  }
}


/*
child: Container(
                padding: const EdgeInsets.all(tDefaultSize),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const LoginHeaderWidget(),
                    // const LoginFormWidget(),
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: [
                    //     const Text("OR"),
                    //     Expanded(
                    //       child: OutlinedButton.icon(
                    //           onPressed: () {},
                    //           icon: const Image(
                    //             image: AssetImage(tGoogleLogoImage),
                    //             width: 20.0,
                    //           ),
                    //           label: const Text(tSignInWithGoogle)),
                    //     ),
                    //     const SizedBox(
                    //       height: tFormHeight - 20,
                    //     ),
                    //     const TextButton(
                    //         onPressed: null, child: Text(tAlreadyHaveAnAccount))
                    //   ],
                    // )
                  ],
                ),
              )),
*/