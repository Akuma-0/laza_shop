import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_shop/core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/themes/app_color/app_color_light.dart';
import '../../../../core/themes/text_styles.dart';
import '../../logic/email_cnofirmation_cubit.dart';
import '../../logic/email_confirmation_state.dart';

class ConfirmEmailBlocListener extends StatelessWidget {
  const ConfirmEmailBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<EmailConfirmationCubit, EmailConfirmationState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColorLight.primaryColor,
                ),
              ),
            );
          },
          success: (loginResponse) {
            //pop until login screen
            context.pushNamedAndRemoveUntil(
              Routes.loginScreen,
              predicate: (route) => false,
            );
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
            child: Text('Got it', style: TextStyles.font13W400.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
