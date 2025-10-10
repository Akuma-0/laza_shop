// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_email_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyEmailRequestBody _$VerifyEmailRequestBodyFromJson(
  Map<String, dynamic> json,
) => VerifyEmailRequestBody(
  otp: json['otp'] as String,
  email: json['email'] as String,
);

Map<String, dynamic> _$VerifyEmailRequestBodyToJson(
  VerifyEmailRequestBody instance,
) => <String, dynamic>{'otp': instance.otp, 'email': instance.email};
