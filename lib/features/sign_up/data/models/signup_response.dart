import 'package:json_annotation/json_annotation.dart';

part 'signup_response.g.dart';

@JsonSerializable()
class SignupResponse {
  final String? message;
  SignupResponse({this.message});

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);
}

/*
{
    "message": "Registeration Successfull, an otp is sent to your email inbox please use it to verify your email."
}
*/
