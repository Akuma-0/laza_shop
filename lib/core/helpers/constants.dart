import 'package:flutter/material.dart';

bool isLoggedInUser = false;
bool isOnboardingSeen = false;

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class SharedPrefKeys {
  static const String userToken = 'userToken';
  static const String refreshToken = 'refreshToken';
  static const String onboarding = 'onboarding';
}
