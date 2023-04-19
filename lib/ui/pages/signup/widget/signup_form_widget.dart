import 'package:flutter/material.dart';
import 'package:delivery_indotl/domain/constants/sizes.dart';
import 'package:delivery_indotl/domain/constants/text_string.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person_outline_outlined),
                    labelText: tFullName,
                    hintText: tFullName,
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: tFormHeight - 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    labelText: tEmail,
                    hintText: tEmail,
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.remove_red_eye_sharp))),
              ),
              const SizedBox(
                height: tFormHeight - 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.numbers),
                    labelText: tPhoneNo,
                    hintText: tPhoneNo,
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.remove_red_eye_sharp))),
              ),
              const SizedBox(
                height: tFormHeight - 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.fingerprint),
                    labelText: tPassword,
                    hintText: tPassword,
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.remove_red_eye_sharp))),
              ),
              const SizedBox(
                height: tFormHeight - 20,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text(tSignup.toUpperCase())))
            ],
          ),
        ),
      ),
    );
  }
}
