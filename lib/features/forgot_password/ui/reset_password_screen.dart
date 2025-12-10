import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_shop/features/forgot_password/ui/widgets/reset_password/reset_password_bloc_listner.dart';
import 'package:laza_shop/features/forgot_password/ui/widgets/reset_password/reset_password_form.dart';
import '../../../core/helpers/extensions.dart';
import '../../../core/themes/text_styles.dart';
import '../../../core/widgets/app_bottom_bar.dart';
import '../logic/reset_password/reset_password_cubit.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
              Text('Reset Password', style: TextStyles.font28W600),
              SizedBox(height: 10.0.h),
              Text(
                'Please enter the OTP sent to your email and set a new password',
                style: TextStyles.font15W400.copyWith(
                  color: context.colorScheme.onSecondary,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50.0.h),
              Image.asset('assets/images/Forgot Password.gif'),
              SizedBox(height: 50.0.h),
              ResetPasswordForm(),
              ResetPasswordBlocListner(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AppBottomBar(
        onTap: () => validateThenSubmit(context),
        buttonText: 'Reset Password',
      ),
    );
  }

  void validateThenSubmit(BuildContext context) {
    final email = ModalRoute.of(context)?.settings.arguments as String;
    if (context.read<ResetPasswordCubit>().formKey.currentState!.validate()) {
      context.read<ResetPasswordCubit>().submitResetPassword(email);
    }
  }
}
