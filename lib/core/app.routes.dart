import 'package:flutter/cupertino.dart';
import 'package:gopet/views/signup/signup.dart';
import 'package:gopet/views/signup/success_signup.dart';

class AppRoutes {
  static String get home => '/home';
  static String get signup => '/signup';
  static String get successSignup => '/success';

  static Map<String, Widget Function(BuildContext)> get allRoutes => {
        home: (context) => Container(),
        signup: (context) => SignUpScreen(),
        successSignup: (context) => const SuccessSignUpScreen(),
      };
}
