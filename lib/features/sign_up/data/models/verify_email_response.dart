import 'package:json_annotation/json_annotation.dart';

part 'verify_email_response.g.dart';

@JsonSerializable()
class VerifyEmailResponse {
  final String? message;

  VerifyEmailResponse({this.message});

  factory VerifyEmailResponse.fromJson(dynamic json) {
    if (json is String) {
      return VerifyEmailResponse(message: json);
    } else if (json is Map<String, dynamic>) {
      return _$VerifyEmailResponseFromJson(json);
    } else {
      return VerifyEmailResponse(message: 'Unknown response format');
    }
  }

  Map<String, dynamic> toJson() => _$VerifyEmailResponseToJson(this);
}

/*
API Response Patterns:
- Success: String "Email verified successfully."
- Error: JSON object {"statusCode": 400, "message": "error details", "errors": {...}}
*/
