import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_shop/features/forgot_password/ui/widgets/forgot_password/forgot_password_form.dart';
import '../../../core/helpers/extensions.dart';
import '../../../core/themes/text_styles.dart';
import '../../../core/widgets/app_bottom_bar.dart';
import '../logic/forgot_password/forgot_password_cubit.dart';
import 'widgets/forgot_password/forgot_password_bloc_listner.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
            backgroundColor: context.colorScheme.surface,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                context.pop();
              },
              color: context.colorScheme.onSurface,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Column(
            children: [
              Text('Forgot Password', style: TextStyles.font28W600),
              SizedBox(height: 10.0.h),
              Text(
                'Please enter your email address to continue',
                style: TextStyles.font15W400.copyWith(
                  color: context.colorScheme.onSecondary,
                ),
              ),
              SizedBox(height: 50.0.h),
              Image.asset('assets/images/Forgot Password.gif'),
              SizedBox(height: 50.0.h),
              ForgotPasswordForm(),
              ForgotPasswordBlocListner(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AppBottomBar(
        onTap: () => validateThenSubmit(context),
        buttonText: 'Send OTP',
      ),
    );
  }

  void validateThenSubmit(BuildContext context) {
    if (context.read<ForgotPasswordCubit>().formKey.currentState!.validate()) {
      context.read<ForgotPasswordCubit>().submitForgotPassword();
    }
  }
}
