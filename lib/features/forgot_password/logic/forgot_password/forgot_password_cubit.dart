import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_shop/core/networking/api_result.dart';
import 'package:laza_shop/features/forgot_password/data/models/forgot_password_request_body.dart';
import '../../data/repos/forgot_password_repo.dart';
import 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit(this._forgotPasswordRepo)
    : super(ForgotPasswordState.initial());

  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final ForgotPasswordRepo _forgotPasswordRepo;

  void submitForgotPassword() async {
    emit(ForgotPasswordState.loading());
    final response = await _forgotPasswordRepo.forgotPassword(
      ForgotPasswordRequestBody(email: emailController.text),
    );
    response.when(
      success: (forgotPasswordSuccess) {
        emit(ForgotPasswordState.success(forgotPasswordSuccess));
      },
      failure: (failure) {
        emit(
          ForgotPasswordState.error(error: failure.apiErrorModel.message ?? ''),
        );
      },
    );
  }
}
