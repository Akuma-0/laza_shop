import 'package:flutter/material.dart';
import 'package:laza_shop/core/helpers/extensions.dart';

import 'core/di/dependency_injection.dart';
import 'core/helpers/constants.dart';
import 'core/helpers/shared_pref_helper.dart';
import 'core/routing/app_router.dart';
import 'laza_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await checkIsOnboardingSeen();
  await checkIfLoggedInUser();
  runApp(LazaShopApp(appRouter: AppRouter()));
}

checkIfLoggedInUser() async {
  String? userToken = await SharedPrefHelper.getSecuredString(
    SharedPrefKeys.userToken,
  );
  isLoggedInUser = !userToken.isNullOrEmpty();
  debugPrint('isLoggedInUser: $isLoggedInUser');
}

checkIsOnboardingSeen() async {
  isOnboardingSeen = await SharedPrefHelper.getBool(SharedPrefKeys.onboarding);
  
}
