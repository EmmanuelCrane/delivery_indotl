import 'package:delivery_indotl/domain/theme/theme.dart';
import 'package:delivery_indotl/ui/pages/home/home_page.dart';
import 'package:delivery_indotl/ui/pages/login/login_screen.dart';
import 'package:delivery_indotl/ui/pages/on_boarding/on_boarding_screen.dart';
import 'package:delivery_indotl/ui/pages/signup/signup_screen.dart';
import 'package:delivery_indotl/ui/pages/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      // home: const OnBoardingScreen(),
      // home: const WelcomeScreen(),
      // home: const LoginScreen(),
      // home: const SignupScreen(),
      home: const HomePage(),
    );
  }
}
