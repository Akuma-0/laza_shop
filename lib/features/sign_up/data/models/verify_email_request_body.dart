import 'package:json_annotation/json_annotation.dart';

part 'verify_email_request_body.g.dart';

@JsonSerializable()
class VerifyEmailRequestBody {
  final String otp;
  final String email;

  VerifyEmailRequestBody({required this.otp, required this.email});

  factory VerifyEmailRequestBody.fromJson(Map<String, dynamic> json) =>
      _$VerifyEmailRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyEmailRequestBodyToJson(this);
}

/*
{
  "email": "string",
  "otp": "string"
}
*/
