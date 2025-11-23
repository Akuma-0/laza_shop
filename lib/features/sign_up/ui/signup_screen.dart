import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_shop/core/widgets/app_bottom_bar.dart';
import 'package:laza_shop/features/sign_up/ui/widgets/signup_bloc_listner.dart';
import 'package:laza_shop/features/sign_up/ui/widgets/signup_form.dart';
import '../../../core/helpers/extensions.dart';
import '../../../core/themes/text_styles.dart';
import '../logic/signup_cubit.dart';
import 'widgets/password_requirements.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: Padding(
          padding: EdgeInsetsDirectional.all(6.w),
          child: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.surface,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                context.pop();
              },
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.h),
              Text('Sign Up', style: TextStyles.font28W600),
              SizedBox(height: 50.0.h),
              SignupForm(),
              SizedBox(height: 20.0.h),
              Align(
                alignment: Alignment.centerLeft,
                child: PasswordRequirements(),
              ),
              SizedBox(height: 40.0.h),
              Align(
                alignment: AlignmentGeometry.center,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text:
                        'By connecting your account confirm that you agree with our ',
                    style: TextStyles.font13W400.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                    children: [
                      TextSpan(
                        text: 'Terms & Conditions',
                        style: TextStyles.font13W500.copyWith(
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SignupBlocListener(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AppBottomBar(
        onTap: () => validateThenDoSignup(context),
        buttonText: 'Sign Up',
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
