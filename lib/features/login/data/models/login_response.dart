import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  String? accessToken;
  String? expiresAtUtc;
  String? refreshToken;

  LoginResponse({this.accessToken, this.expiresAtUtc, this.refreshToken});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

/*
{
    "accessToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2YmY2ZTYzNi0wMzIwLTQzYjUtMDA3MC0wOGRlMDQxODkwZmEiLCJqdGkiOiI0MTg0M2E2Ny03NDEzLTQ3MjgtYjU1Ni0zYzk5NTQyNDAxMmUiLCJlbWFpbCI6ImhhbnltN21kOTBAZ21haWwuY29tIiwibmFtZSI6IkhhbnkgTW9oYW1lZCIsInJvbGVzIjoiIiwicGljdHVyZSI6IiIsImV4cCI6MTc2MDA0MzgwOCwiaXNzIjoiZXNob3AubmV0IiwiYXVkIjoiZXNob3AubmV0In0.CpqzpQHHxaLUflodWI2ZrOIpjkOFVBbGKLnyfeknkZk",
    "expiresAtUtc": "2025-10-09T21:03:28.3356711Z",
    "refreshToken": "3FsBTYWdbdVQxJVBvR9Qv2drxnRZpJ6xkfiv/B/Os3SzYe2zujNXx7nMFxTAkxARmr6D1psGpsMP1vOnKQCs7w=="
}
*/
