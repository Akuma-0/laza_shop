// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      userData: json['userData'] == null
          ? null
          : UserData.fromJson(json['userData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'userData': instance.userData,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      accessToken: json['accessToken'] as String?,
      expiresAtUtc: json['expiresAtUtc'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
      'expiresAtUtc': instance.expiresAtUtc,
      'refreshToken': instance.refreshToken,
    };
