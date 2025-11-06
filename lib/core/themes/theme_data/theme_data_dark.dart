import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app_color/app_color_dark.dart';

ThemeData getThemeDataDark() => ThemeData(
  primaryColor: AppColorDark.primaryColor,
  scaffoldBackgroundColor: AppColorDark.onPrimaryColor,
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0.r)),
      ),
      backgroundColor: WidgetStateProperty.all(AppColorDark.primaryColor),
      padding: WidgetStateProperty.all<EdgeInsets>(
        EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
      ),
      fixedSize: WidgetStateProperty.all(Size(double.maxFinite, 50.h)),
    ),
  ),
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: AppColorDark.primaryColor,
    onPrimary: AppColorDark.onPrimaryColor,
    secondary: AppColorDark.secondaryColor,
    onSecondary: AppColorDark.onSecondaryColor,
    error: AppColorDark.errorColor,
    onError: AppColorDark.onErrorColor,
    surface: AppColorDark.surfaceColor,
    onSurface: AppColorDark.onSurfaceColor,
    surfaceContainer: AppColorDark.surfaceContainer,
  ),
);
