import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/models/verify_email_request_body.dart';
import '../data/repos/verify_email_repo.dart';
import 'email_confirmation_state.dart';

class EmailConfirmationCubit extends Cubit<EmailConfirmationState> {
  final VerifyEmailRepo _verifyEmailRepo;
  EmailConfirmationCubit(this._verifyEmailRepo)
    : super(EmailConfirmationState.initial());
  TextEditingController otpController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitEmailConfirmationStates({required String email}) async {
    emit(const EmailConfirmationState.loading());
    final response = await _verifyEmailRepo.verifyEmail(
      VerifyEmailRequestBody(email: email, otp: otpController.text),
    );
    response.when(
      success: (verifyEmailResponse) async {
        emit(EmailConfirmationState.success(verifyEmailResponse));
      },
      failure: (error) {
        emit(
          EmailConfirmationState.error(
            error: error.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
