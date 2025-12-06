import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app_color/app_color_light.dart';

ThemeData getThemeDataLight() => ThemeData(
  primaryColor: AppColorLight.primaryColor,
  scaffoldBackgroundColor: AppColorLight.onPrimaryColor,
  appBarTheme: AppBarTheme(
    scrolledUnderElevation: 0,
    elevation: 0,
    backgroundColor: AppColorLight.secondaryColor,
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0.r)),
      ),
      backgroundColor: WidgetStateProperty.all(AppColorLight.primaryColor),
      padding: WidgetStateProperty.all<EdgeInsets>(
        EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
      ),
      fixedSize: WidgetStateProperty.all(Size(double.maxFinite, 50.h)),
    ),
  ),
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: AppColorLight.primaryColor,
    onPrimary: AppColorLight.onPrimaryColor,
    secondary: AppColorLight.secondaryColor,
    onSecondary: AppColorLight.onSecondaryColor,
    error: AppColorLight.errorColor,
    onError: AppColorLight.onErrorColor,
    surface: AppColorLight.surfaceColor,
    onSurface: AppColorLight.onSurfaceColor,
    surfaceContainer: AppColorLight.surfaceContainer,
  ),
);
