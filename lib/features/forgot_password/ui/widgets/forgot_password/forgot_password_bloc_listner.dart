import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_shop/core/helpers/extensions.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/themes/text_styles.dart';
import '../../../logic/forgot_password/forgot_password_cubit.dart';
import '../../../logic/forgot_password/forgot_password_state.dart';

class ForgotPasswordBlocListner extends StatelessWidget {
  const ForgotPasswordBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordCubit, ForgotPasswordState>(
      listenWhen: (previous, current) {
        return current is Loading || current is Success || current is Error;
      },
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => Center(
                child: CircularProgressIndicator(
                  color: context.colorScheme.primary,
                ),
              ),
            );
          },
          success: (forgotPasswordSuccess) {
            context.pop();
            final email = context
                .read<ForgotPasswordCubit>()
                .emailController
                .text;
            context.pushNamed(Routes.resetPasswordScreen, arguments: email);
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(Icons.error, color: Colors.red, size: 32),
        content: Text(error, style: TextStyles.font15W500),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font13W400.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
