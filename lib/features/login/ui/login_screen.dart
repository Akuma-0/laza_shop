import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_shop/core/helpers/extensions.dart';
import 'package:laza_shop/core/widgets/app_bottom_bar.dart';
import 'package:laza_shop/features/login/ui/widgets/login_bloc_listner.dart';
import 'package:laza_shop/features/login/ui/widgets/password_requirements.dart';
import '../../../core/themes/colors_manager.dart';
import '../../../core/themes/text_styles.dart';
import '../logic/login_cubit.dart';
import 'widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.0.h),
              Text('Welcome', style: TextStyles.font28W600),
              Text(
                'Please enter your data to continue',
                style: TextStyles.font15W400.copyWith(
                  color: ColorsManager.grey9E,
                ),
              ),
              SizedBox(height: 50.0.h),
              LoginForm(),
              SizedBox(height: 10.h),
              Align(
                alignment: Alignment.centerLeft,
                child: PasswordRequirements(),
              ),
              SizedBox(height: 20.0.h),
              //ToDo: Forgot Password Screen
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyles.font15W400.copyWith(color: Colors.red),
                ),
              ),
              SizedBox(height: 40.0.h),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account? ',
                    style: TextStyles.font15W400.copyWith(
                      color: ColorsManager.grey9E,
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyles.font15W500.copyWith(
                          color: Colors.black,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.pushNamed('/signUpScreen');
                          },
                      ),
                    ],
                  ),
                ),
              ),
              LoginBlocListener(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AppBottomBar(
        onTap: () => validateThenDoLogin(context),
        buttonText: 'Login',
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
