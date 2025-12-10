import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_shop/features/cart/logic/cart_cubit.dart';
import 'package:laza_shop/features/forgot_password/logic/forgot_password/forgot_password_cubit.dart';
import 'package:laza_shop/features/forgot_password/logic/reset_password/reset_password_cubit.dart';
import '../../features/cart/ui/cart_screen.dart';
import '../../features/forgot_password/ui/forgot_password_screen.dart';
import '../../features/forgot_password/ui/reset_password_screen.dart';
import '../../features/home/data/models/products_response_model.dart';
import '../../features/home/logic/home_cubit.dart';
import '../../features/home/ui/home_screen.dart';
import '../../features/login/logic/login_cubit.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/notifications/ui/notifications_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../../features/product_details/ui/product_details_screen.dart';
import '../../features/sign_up/logic/email_cnofirmation_cubit.dart';
import '../../features/sign_up/logic/signup_cubit.dart';
import '../../features/sign_up/ui/confirm_email_screen.dart';
import '../../features/sign_up/ui/signup_screen.dart';
import '../di/dependency_injection.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      /***************************on boarding screen***********************/
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      /*****************************login screen**************************/
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      /**************************forgot password screen***********************/
      case Routes.forgotPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<ForgotPasswordCubit>(),
            child: const ForgotPasswordScreen(),
          ),
        );
      /**************************reset password screen***********************/
      case Routes.resetPasswordScreen:
        final email = arguments as String?;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<ResetPasswordCubit>(),
            child: const ResetPasswordScreen(),
          ),
          settings: RouteSettings(
            name: Routes.resetPasswordScreen,
            arguments: email,
          ),
        );
      /*****************************sign up screen**************************/
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      /***************************confirm email screen***********************/
      case Routes.confirmEmailScreen:
        final email = arguments as String?;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<EmailConfirmationCubit>(),
            child: const ConfirmEmailScreen(),
          ),
          settings: RouteSettings(
            name: Routes.confirmEmailScreen,
            arguments: email,
          ),
        );
      /*****************************home screen**************************/
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeCubit>()
              ..getProducts()
              ..getCategories(),
            child: const HomeScreen(),
          ),
        );

      /*****************************product details screen**************************/
      case Routes.productDetailsScreen:
        final product = arguments as Product;
        return MaterialPageRoute(
          builder: (_) => ProductDetailsScreen(product: product),
          /* BlocProvider(
            create: (context) => getIt<ProductDetailsCubit>(),
            child: ,
          ),*/
        );
      /************************Cart Screen**************************/
      case Routes.cartScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<CartCubit>()..getCartItems(),
            child: CartScreen(),
          ),
        );
      /*****************************notifications Screen**************************/
      case Routes.notificationsScreen:
        return MaterialPageRoute(builder: (_) => const NotificationsScreen());
      default:
        return null;
    }
  }
}
