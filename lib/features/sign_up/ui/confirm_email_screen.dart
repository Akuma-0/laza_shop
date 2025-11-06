import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_shop/core/widgets/app_bottom_bar.dart';
import 'package:pinput/pinput.dart';

import '../../../core/helpers/extensions.dart';
import '../../../core/themes/text_styles.dart';
import '../logic/email_cnofirmation_cubit.dart';
import 'widgets/confirm_email_bloc_listner.dart';

class ConfirmEmailScreen extends StatelessWidget {
  const ConfirmEmailScreen({super.key});

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
            backgroundColor: Theme.of(context).colorScheme.onSecondary,
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
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20.h),
            Text('Confirm your email', style: TextStyles.font28W600),
            SizedBox(height: 10.h),
            Text(
              'Enter the 6-digit code sent to your email',
              style: TextStyles.font13W500.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            SizedBox(height: 10.h),
            SvgPicture.asset(
              'assets/images/otp_cloud.svg',
              height: 166.h,
              width: 225.w,
            ),
            SizedBox(height: 50.h),
            Form(
              key: context.read<EmailConfirmationCubit>().formKey,
              child: Pinput(
                length: 6,
                controller: context
                    .read<EmailConfirmationCubit>()
                    .otpController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the OTP';
                  }
                  return null;
                },
                defaultPinTheme: PinTheme(
                  width: 56,
                  height: 56,
                  textStyle: TextStyles.font22W500,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    border: Border.all(
                      color: Theme.of(context).colorScheme.surfaceContainer,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            ConfirmEmailBlocListener(),
          ],
        ),
      ),
      bottomNavigationBar: AppBottomBar(
        onTap: () => validateThenConfirmEmail(context),
        buttonText: 'Confirm Your Email',
      ),
    );
  }

  void validateThenConfirmEmail(BuildContext context) {
    if (context
        .read<EmailConfirmationCubit>()
        .formKey
        .currentState!
        .validate()) {
      var email = ModalRoute.of(context)?.settings.arguments as String;
      context.read<EmailConfirmationCubit>().emitEmailConfirmationStates(
        email: email,
      );
    }
  }
}
