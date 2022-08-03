import 'package:flutter/material.dart';
import 'package:signup_test/home_screen.dart';
import 'package:signup_test/login_screen.dart';
import 'package:signup_test/mobile_layout.dart';
import 'package:signup_test/signup_screen.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    initialRoute: '/loginScreen',
    routes: {
      '/loginScreen': (context) => const LoginScreen(),
      '/signupScreen': (context) => const SignUpScreen(),
      '/homeScreen': (context) => const HomeScreen(),
      '/mobileLayout': (context) => const MobileLayout()
    },
  ));
}
