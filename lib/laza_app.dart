import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_shop/core/themes/theme_data/theme_data_dark.dart';
import 'core/helpers/constants.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/themes/theme_data/theme_data_light.dart';

class LazaShopApp extends StatelessWidget {
  final AppRouter appRouter;
  const LazaShopApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          navigatorKey: navigatorKey,
          title: 'Accessories Shop App',
          theme: getThemeDataLight(),
          darkTheme: getThemeDataDark(),
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          initialRoute: isLoggedInUser
              ? Routes.homeScreen
              : isOnboardingSeen
              ? Routes.loginScreen
              : Routes.onBoardingScreen,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
