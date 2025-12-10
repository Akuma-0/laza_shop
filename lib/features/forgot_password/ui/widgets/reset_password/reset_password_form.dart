import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_shop/core/helpers/extensions.dart';
import 'package:laza_shop/core/widgets/app_text_form_field.dart';
import 'package:laza_shop/features/forgot_password/logic/reset_password/reset_password_cubit.dart';

import '../../../../../core/helpers/app_regex.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({super.key});

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  bool isObscurePassword = true;
  bool isObscureConfirmPassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ResetPasswordCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'OTP',
            validator: (value) {
              if (value == null ||
                  value.isNullOrEmpty() ||
                  !AppRegex.isOtpValid(value)) {
                return 'Please enter a valid 6-digit OTP';
              }
            },
            controller: context.read<ResetPasswordCubit>().otpController,
          ),
          SizedBox(height: 20.0),
          AppTextFormField(
            hintText: 'New Password',
            isObscureText: isObscurePassword,
            validator: (value) {
              if (value == null ||
                  value.isNullOrEmpty() ||
                  !AppRegex.isPasswordValid(value)) {
                return 'Password must be at least 8 characters long and include uppercase, lowercase, number, and special character.';
              }
            },
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscurePassword = !isObscurePassword;
                });
              },
              child: Icon(
                isObscurePassword ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            controller: context.read<ResetPasswordCubit>().passwordController,
          ),
          SizedBox(height: 20.0),
          AppTextFormField(
            hintText: 'Confirm New Password',
            isObscureText: isObscureConfirmPassword,
            validator: (value) {
              if (value == null || value.isNullOrEmpty()) {
                return 'Please confirm your password';
              }
              if (value !=
                  context.read<ResetPasswordCubit>().passwordController.text) {
                return 'Passwords do not match';
              }
            },
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureConfirmPassword = !isObscureConfirmPassword;
                });
              },
              child: Icon(
                isObscureConfirmPassword
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            controller: context
                .read<ResetPasswordCubit>()
                .confirmPasswordController,
          ),
        ],
      ),
    );
  }
}
