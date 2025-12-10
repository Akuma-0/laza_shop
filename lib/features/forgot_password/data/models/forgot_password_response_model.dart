import 'package:json_annotation/json_annotation.dart';

part 'forgot_password_response_model.g.dart';

@JsonSerializable()
class ForgotPasswordResponseModel {
  final String message;

  ForgotPasswordResponseModel({required this.message});

  factory ForgotPasswordResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordResponseModelFromJson(json);
}

/*
"If the email is registered, you will receive an OTP to reset your password."
*/