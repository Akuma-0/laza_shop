import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_shop/core/widgets/app_text_form_field.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../logic/signup_cubit.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'First name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid first name';
              }
            },
            controller: context.read<SignupCubit>().firstNameController,
          ),
          SizedBox(height: 20.h),
          AppTextFormField(
            hintText: 'Last name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid last name';
              }
            },
            controller: context.read<SignupCubit>().lastNameController,
          ),
          SizedBox(height: 20.h),
          AppTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<SignupCubit>().emailController,
          ),
          SizedBox(height: 20.h),
          AppTextFormField(
            hintText: 'Password',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            controller: context.read<SignupCubit>().passwordController,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
