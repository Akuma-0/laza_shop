import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/helpers/constants.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/themes/colors_manager.dart';

class LazaShopApp extends StatelessWidget {
  final AppRouter appRouter;
  const LazaShopApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Accessories Shop App',
        theme: ThemeData(
          primaryColor: ColorsManager.mainPurple,
          scaffoldBackgroundColor: ColorsManager.mainWhite,
          textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.black)),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: isOnboardingSeen ? Routes.loginScreen : Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
