import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_shop/features/sign_up/ui/widgets/signup_bloc_listner.dart';
import 'package:laza_shop/features/sign_up/ui/widgets/signup_form.dart';
import '../../../core/helpers/extensions.dart';
import '../../../core/themes/colors_manager.dart';
import '../../../core/themes/text_styles.dart';
import '../logic/signup_cubit.dart';

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
            backgroundColor: ColorsManager.greyFA,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                context.pop();
              },
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20.h),
            Text('Sign Up', style: TextStyles.font28W600),
            SizedBox(height: 50.0.h),
            SignupForm(),
            SizedBox(height: 40.0.h),
            Align(
              alignment: AlignmentGeometry.center,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text:
                      'By connecting your account confirm that you agree with our ',
                  style: TextStyles.font13W400.copyWith(
                    color: ColorsManager.grey9E,
                  ),
                  children: [
                    TextSpan(
                      text: 'Terms & Conditions',
                      style: TextStyles.font13W500.copyWith(
                        color: Colors.black,
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
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        child: GestureDetector(
          onTap: () => validateThenDoSignup(context),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0.w),
            decoration: BoxDecoration(color: ColorsManager.mainPurple),
            child: Text(
              'Sign Up',
              textAlign: TextAlign.center,
              style: TextStyles.font17W500.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
