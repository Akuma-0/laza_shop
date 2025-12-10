import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/models/reset_password_request_body.dart';
import '../../data/repos/forgot_password_repo.dart';
import 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit(this._forgotPasswordRepo)
    : super(ResetPasswordState.initial());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController otpController = TextEditingController();
  final ForgotPasswordRepo _forgotPasswordRepo;

  void submitResetPassword(String email) async {
    emit(ResetPasswordState.loading());
    final response = await _forgotPasswordRepo.resetPassword(
      ResetPasswordRequestBody(
        email: email,
        otp: otpController.text,
        newPassword: passwordController.text,
      ),
    );
    response.when(
      success: (resetPasswordSuccess) {
        emit(ResetPasswordState.success(resetPasswordSuccess));
      },
      failure: (failure) {
        emit(
          ResetPasswordState.error(error: failure.apiErrorModel.message ?? ''),
        );
      },
    );
  }
}
