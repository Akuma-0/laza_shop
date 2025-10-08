import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  @JsonKey(name: 'statusCode')
  final int? code;

  ApiErrorModel({required this.message, this.code});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}

///as the errors is a map of maps of lists i'll just ignore it for now
/*
{
"statusCode": 400,
"message": "One or more errors occurred!",
"errors": {
"generalErrors": [
"Invalid email or password."
]
}
}
**********************
{
    "statusCode": 400,
    "message": "One or more errors occurred!",
    "errors": {
        "email": [
            "Email is not valid."
        ],
        "password": [
            "Password must be at least 8 characters.",
            "Password must contain at least one uppercase letter.",
            "Password must contain at least one digit.",
            "Password must contain at least one special character."
        ]
    }
}
*/
